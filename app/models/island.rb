class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, :description, :size, :number_of_guests, :price_per_night, presence: true
  # validates :name, uniqueness: true
  # validates :name, length: { maximum: 30 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
