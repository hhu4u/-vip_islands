class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  # validates :name, :description, :size, :number_of_guests, :price_per_night, presence: true
  # validates :name, uniqueness: true
  # validates :photos, presence: { message: "should add photos" }
  # validates :name, length: { maximum: 30 }
end
