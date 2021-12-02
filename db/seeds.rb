# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all

img = ["https://images.pexels.com/photos/171227/pexels-photo-171227.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://images.pexels.com/photos/731553/pexels-photo-731553.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://images.pexels.com/photos/162287/cat-british-shorthair-bkh-thoroughbred-162287.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://images.pexels.com/photos/1492219/pexels-photo-1492219.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://images.pexels.com/photos/596590/pexels-photo-596590.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://images.pexels.com/photos/1404821/pexels-photo-1404821.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", "https://images.pexels.com/photos/2527491/pexels-photo-2527491.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"]

7.times do |x|
    Item.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.sentence(word_count: 10, supplemental: true), price: Faker::Number.decimal(l_digits: 2), image_url: img[x])
end

user = User.create(email: "user@test.com", password: "123456789")


