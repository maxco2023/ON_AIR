class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include UserConcern
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clubs, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :biography, presence: true, length: { maximum: 275 }

  has_one_attached :photo
end
