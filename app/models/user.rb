class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable, #disabled registration
         :recoverable, :rememberable, :validatable

  has_many :solutions
end
