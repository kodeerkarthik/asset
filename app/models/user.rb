class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    # def username
    #   return self.email.split('@')[0].capitalize
    # end

    after_create :signup_confirmation
    def signup_confirmation
      UserMailer.signup_confirmation(self).deliver
    end
end
