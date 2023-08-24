class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island
  validates :start_date, :end_date, :number_of_guests, presence: true
  validates :start_date, comparison: { less_than: :end_date }
end
