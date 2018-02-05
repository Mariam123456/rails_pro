class UserMailer < ApplicationMailer
	def contact_form(email, name, message)
		mail(:to =>'mariamcareerf@gmail.com',
			:subject=> "A new contact form message from #{name}",
			:body => "You have new contact message from this email : #{email} with this message : #{message}")
	end
	def welcome(user)
		@user = user
		@appname = "food co market"
		mail(to: user.email,
			subject: "Welcome to #{@appname}!")
	end
end



