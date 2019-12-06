# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
User.destroy_all
8.times do |t|
    user = User.create(email: "#{Faker::Name.first_name}@yopmail.com", password: "azerty123", speciality_1: "Beatmaker")
end
puts "8 users et items on été créé"
8.times do |t|
    user = User.create(email: "#{Faker::Name.first_name}@yopmail.com", password: "azerty123", speciality_1: "Singer")
end
puts "8 users et items on été créé"