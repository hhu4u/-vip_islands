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

puts "Creating islands"
10.times do
  file = URI.open("https://media.vogue.co.uk/photos/5e0f41c80e4ed8000870310f/4:3/w_5244,h_3933,c_limit/Private%20Island%203.jpg")
  island = Island.new(name: "Beautiful island",
                      description: "Nestled amidst breathtaking turquoise waters, the island boasts lavish beachfront villas and overwater bungalows, each equipped with private pools and decks for ultimate relaxation. Indulge in gourmet dining prepared by world-class chefs, or unwind with rejuvenating spa treatments and yoga sessions surrounded by lush nature. ",
                      size: [*500..1000].sample,
                      number_of_guests: [*5..15].sample,
                      price_per_night: [*5000..10000].sample)
  island.user = users.sample
  island.photos.attach(io: file, filename: "island.jpg", content_type: "image/jpg")
  island.save!
end
