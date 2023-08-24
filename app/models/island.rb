class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  validates :name, :description, :size, :number_of_guests, :price_per_night, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 30 }
end
