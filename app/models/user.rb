class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  
  validates :mobile, numericality: { only_integer: true }, length: { is: 10 }
  validates :username, presence: true, uniqueness: true

    after_create :signup_confirmation
    def signup_confirmation
      UserMailer.signup_confirmation(self).deliver
    end
end
