class Club < ApplicationRecord
  include ClubConcern
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true, uniqueness: { scope: :name }
  validates :description, presence: true, length: { maximum: 275 }
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :hour_price, presence: true, numericality: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address_and_category,
    against: %i[ name address category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
