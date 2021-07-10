# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

List.destroy_all
puts "Creating lists..."
List.create(
  name: "Comedy"
  )

List.create(
  name: "Rom-Com"
  )

List.create(
  name: "Action"
  )

List.create(
  name: "Drama"
  )

List.create(
  name: "Documentary"
  )

List.create(
  name: "Sci-Fi"
  )
puts "Lists created!"

Movie.destroy_all
puts "Creating movies..."
100.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: "https://unsplash.com/photos/q8P8YoR6erg",
    rating: rand(1..10)
    )
end
puts "Movies created!"
