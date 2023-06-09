class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://github.com/mohit-bestpeers/blog_application'
    mail(to: @user.email, subject: 'Welcome to My Blog-Application')
  end
end
