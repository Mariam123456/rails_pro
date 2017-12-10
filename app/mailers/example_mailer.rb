class ExampleMailer < ApplicationMailer
  default from: 'aa.20071664@gmail.com'
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

end
