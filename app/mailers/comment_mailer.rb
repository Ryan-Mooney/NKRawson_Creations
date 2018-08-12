class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #3
   default to: 'mooneyryanj@gmail.com'
   default from: "support@nkrawsoncreations.com"
   def new_comment(name, email, body)
      @name = name
      @email = email
      @body=body
	  mail to: 'mooneyryanj@gmail.com',
		subject: 'New Contact Form Message from ' + @name
   end
end