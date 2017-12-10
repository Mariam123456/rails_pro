class SimplePagesController < ApplicationController
  def landing_page
    @featured_product = Product.first
    @products = Product.limit(3)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
                            to: 'emanhamdancf@gmail.com',
                            subject: "A new contact form message from #{@name}",
                            body: @message).deliver_now
    UserMailer.contact_form(@email, @name, @message).deliver
  end
end
