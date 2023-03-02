class Booking < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :start_date, uniqueness: true
  validates :end_date, uniqueness: true

  validates :start_date, presence: true, comparison: { less_than_or_equal_to: :end_date }
  validates :end_date, presence: true, comparison: { greater_than_or_equal_to: :start_date }
  validate :start_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "La date de réservation ne peut pas être antérieure à aujourd'hui")
    end
  end

  def start_time
    self.start_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end
end
