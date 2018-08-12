class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create 
        @contact=Contact.new(contact_params)
        if @contact.save
            #Sends an email to admin about a new comment
            name = params[:contact][:name]
            email=params[:contact][:email]
            body=params[:contact][:comments]
            CommentMailer.new_comment(name, email, body).deliver
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
    def contact_params
        params.require(:contact).permit(:name, :email, :comments)
    end
end