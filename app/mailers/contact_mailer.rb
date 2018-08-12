class ContactMailer < ApplicationMailer
   default to: 'mooneyryanj@gmail.com'
   default from: "support@nkrawsoncreations.com"
   
   def contact_email(name, email, body)
      @name = name
      @email = email
      @body=body
      mail(from: email, subject: 'Contact Form Message')
	  mail to: 'mooneyryanj@gmail.com',
		subject: 'Contact Form Message from' + @name
   end
end