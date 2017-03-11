# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "jerome@mail.com", password: "azerty")

Flat.create!(name: "Petit cocon dans Paris", description: "Superbe appartement idéalement située", address:"Champs Elysées, Paris", max_guests: 4 price_per_night: 50)
