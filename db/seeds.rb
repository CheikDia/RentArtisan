# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 100 fake users...'

User.destroy_all

100.times do
  user = User.new(
    name:    Faker::FunnyName.name,
    description: Faker::Lorem.paragraph,
    region: Faker::Address.state,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
      )
  user.save!
end
puts 'Finished!'
