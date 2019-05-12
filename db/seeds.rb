# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  name = Faker::Dessert.variety
  description = Faker::Lorem.sentence #text

  Product.create!(name: name,
                  description: description,
                  price: 1000,
                  )
end
