class Booking < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :start_date, presence: true, comparison: { less_than_or_equal_to: :end_date }
  validates :end_date, presence: true, comparison: { greater_than_or_equal_to: :start_date }


  def start_time
    self.start_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end
end
