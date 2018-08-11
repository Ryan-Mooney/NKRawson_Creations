# Preview all emails at http://localhost:3000/rails/mailers/comment_mailer
class CommentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/comment_mailer/new_comment
  def new_comment
	name='Ryan'
	email='mooneyryanj@gmail.com'
	body='fckasdfkasd'
    CommentMailer.new_comment(name, email, body)
  end

end
