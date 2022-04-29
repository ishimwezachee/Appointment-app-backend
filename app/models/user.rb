class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_secure_password
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :email, uniqueness: true
end
