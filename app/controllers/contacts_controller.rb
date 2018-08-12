class ContactsController < ApplicationController
    #GET request to /contact-us, Show new contact form
    def new
        @contact = Contact.new
    end
    
    #POST request from /contacts
    def create 
        #Mass assignment of form fields into contact object
        @contact=Contact.new(contact_params)
        #Save the contact object to the database
        if @contact.save
            #Stores form fields into parameters
            name = params[:contact][:name]
            email=params[:contact][:email]
            body=params[:contact][:comments]
            #Sends an email to admin about a new comment
            ContactMailer.contact_email(name, email, body).deliver
            #Lets user know the email was sent
            flash[:success]="Message sent."
            redirect_to "/contact-us"
        else 
            #Lets user know if they didn't fill in the form properly
            flash[:danger] = @contact.errors.full_messages.join(", ")
            redirect_to "/contact-us"
        end
    end
    
    private
        #To collect data from form, we need to use strong parameters
        #and whitelist the form fields
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end