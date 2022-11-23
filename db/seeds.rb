# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

10.times do
  Flat.create!(
    name: Faker::Mountain.name,
    address: Faker::Address.full_address,
    description: Faker::TvShows::BigBangTheory.quote,
    price_per_night: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    number_of_guests: Faker::Number.between(from: 1, to: 10)
  )
end
