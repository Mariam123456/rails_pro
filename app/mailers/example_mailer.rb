class ExampleMailer < ApplicationMailer
  default from: 'mariamcareerf@gmail.com'
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

end
