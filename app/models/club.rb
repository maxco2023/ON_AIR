class Club < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true, uniqueness: { scope: :name }
  validates :description, presence: true, length: { minimum: 50 }
  validates :phone_number, presence: true
  validates :type, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :hour_price, presence: true, numericality: true

end
