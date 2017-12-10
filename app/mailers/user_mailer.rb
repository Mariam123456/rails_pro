class UserMailer < ApplicationMailer
    def contact_form(email, name, message)
      mail(:to =>'aa.20071664@gmail.com',
           :subject=> "A new contact form message from #{name}",
         :body => "You have new contact message from this email : #{email} with this message : #{message}")
    end
end
