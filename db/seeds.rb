# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
puts 'Creating sample restaurants'
Restaurant.destroy_all
10.times do
  Restaurant.create({ name: Faker::Fantasy::Tolkien.poem, address: Faker::Fantasy::Tolkien.location, phone_number: Faker::Number.number(digits: 10), category: CATEGORIES.sample })
end
puts 'Finished!'
