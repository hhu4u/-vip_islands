# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

user = User.new(first_name: "Test", last_name: "Test", email: "test@user.com", password: "123456")


file = URI.open("")
island = Island.new(name: "Beautiful island", description: "", size: 150, number_of_guests: 5, price_per_night: 8000)
island.user = user
island.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
island.save!
