# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all

5.times do
    Item.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.sentence(word_count: 3, supplemental: true), price: Faker::Number.decimal(l_digits: 2), image_url: "/images/cat-image-#{rand(6)}.jpg")
end

user = User.create(email: "user@test.com", password: "123456789")


