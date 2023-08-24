# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Clearing db"
Island.destroy_all
User.destroy_all

puts "Creating users"
user = User.new(first_name: "Test", last_name: "Test", email: "test@user.com", password: "123456")
user.save!
user2 = User.new(first_name: "Test2", last_name: "Test2", email: "test2@user.com", password: "123456")
user2.save!

users = [user, user2]

locations = %(fonualei "mata uta" peale nukuoro norfolk mehetia manuae vostok flint rurutu rimatara pitcairn teraina
              kosrae pingelap "fenua fala" nassau penrhyn)

puts "Creating islands"
locations.count.times do
  file = URI.open("https://media.vogue.co.uk/photos/5e0f41c80e4ed8000870310f/4:3/w_5244,h_3933,c_limit/Private%20Island%203.jpg")
  file2 = URI.open("https://resmark-production.s3.amazonaws.com/images/ap7ZXS/0af59325a074718306a16f6385f812b7ac146c06/medium")
  file3 = URI.open("https://www.tahiti.com/images1/gallery/Bora-Bora-Yoga-Session12-2000x1200_65866.jpg")
  file4 = URI.open("https://cdn.luxatic.com/wp-content/uploads/2012/04/Laucala-Island-Fiji-1.jpg")
  file5 = URI.open("https://dbijapkm3o6fj.cloudfront.net/resources/1432,1004,1,6,4,0,600,450/-4091-/20160111122433/jet-ski-guided-tour.jpeg")
  island = Island.new(name: "Beautiful island",
                      description: "Nestled amidst breathtaking turquoise waters, the island boasts lavish beachfront villas and overwater bungalows, each equipped with private pools and decks for ultimate relaxation. Indulge in gourmet dining prepared by world-class chefs, or unwind with rejuvenating spa treatments and yoga sessions surrounded by lush nature. ",
                      address: "",
                      size: [*500..1000].sample,
                      number_of_guests: [*5..15].sample,
                      price_per_night: [*5000..10000].sample)
  island.user = users.sample
  island.photos.attach(io: file, filename: "island.jpg", content_type: "image/jpg")
  island.photos.attach(io: file2, filename: "helicopter.jpg", content_type: "image/jpg")
  island.photos.attach(io: file3, filename: "yoga.jpg", content_type: "image/jpg")
  island.photos.attach(io: file4, filename: "pool.jpg", content_type: "image/jpg")
  island.photos.attach(io: file5, filename: "watersports.jpg", content_type: "image/jpg")
  island.save!
end

puts "updating addresses"
islands = Island.all
islands.each_with_index do |island, index|
  island.address = locations[index]
end

puts "seeds completed"
