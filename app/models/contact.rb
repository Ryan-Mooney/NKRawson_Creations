class Contact<ActiveRecord::Base
    #Contact form validations
    @contact
    validates :name, presence: { message: 'Name must be given' }
    validates :email, presence: { message: "Email must be given" }
    include EmailValidatable
    validates :email, email: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Invalid email" } 
    validates :comments, presence: { message: "Please provide your comments" }
end