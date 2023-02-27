class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clubs, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :biography, presence: true, length: { minimum: 50 }

end
