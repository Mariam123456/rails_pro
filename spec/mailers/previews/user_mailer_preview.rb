# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

    def contact_form
      UserMailer.contact_form("aa.20071663@gmail.com", "mariamsakallah", "Hello World!")
    end
end
