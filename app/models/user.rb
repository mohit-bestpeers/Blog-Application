class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # before_action :authenticate_user!

  after_create :send_welcome_email
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private
  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end         
end
