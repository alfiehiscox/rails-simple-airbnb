# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Database"
Flat.destroy_all

6.times do
  puts "Creating Flat"
  params = {
      name: Faker::Address.street_name,
      address: Faker::Address.street_address,
      description: Faker::Quote.famous_last_words,
      price_per_night: rand(50..150),
      number_of_guests: rand(1..10)
  }
  flat = Flat.new(params)
  flat.save
end
