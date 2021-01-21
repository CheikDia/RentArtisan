# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

puts 'Creating 100 fake users...'

Skill.destroy_all
User.destroy_all

5.times do
  user = User.new(
    name:    Faker::FunnyName.name,
    description: Faker::Lorem.paragraph,
    region: Faker::Address.state,
    email: Faker::Internet.email,
    password: 'password'
      )
  user.save!
end
puts 'Finished!'


skill_1 = Skill.new(
  name: "Electricien",
  user: User.all.to_a.sample,
  unit_price: 50,
  rating: 4,
  )
  file = URI.open("https://www.connaissancedesenergies.org/sites/default/files/styles/image_530_px_large/public/image_article/Fourniture-electricite-dossier_0.jpg?itok=l6YL8mJY")
  skill_1.photo.attach(io: file, filename: 'electricien')
  skill_1.save

skill_2 = Skill.new(
  name: "Plombier",
  user: User.all.to_a.sample,
  unit_price: 40,
  rating: 3,
  )
file = URI.open("https://res.cloudinary.com/dvateiuot/image/upload/v1610807282/Plombier_q3eauv.jpg")
  skill_2.photo.attach(io: file, filename: 'plombier')
  skill_2.save

skill_3 = Skill.new(
  name: "Chauffagiste",
  user: User.all.to_a.sample,
  unit_price: 100,
  rating: 3,

  )
file = URI.open("https://res.cloudinary.com/dvateiuot/image/upload/v1610626349/HomePage_v6_p1la1c.jpg")
  skill_3.photo.attach(io: file, filename: 'chauffagiste')
  skill_3.save


skill_4 = Skill.new(
  name: "Carreleur",
  user: User.all.to_a.sample,
  unit_price: 20,
  rating: 3,
  )

file = URI.open("https://res.cloudinary.com/dvateiuot/image/upload/v1610807282/carreleur_w6cfzg.jpg")
  skill_4.photo.attach(io: file, filename: 'carreleur')
  skill_4.save


skill_5 = Skill.new(
  name: "Entreprise generale du batiment",
  user: User.all.to_a.sample,
  unit_price: 180,
  rating: 5,
  )
file = URI.open("https://res.cloudinary.com/dvateiuot/image/upload/v1610626349/Artisan_HomePage_v5_fhdbdi.jpg")
  skill_5.photo.attach(io: file, filename: 'entreprise_generale')
  skill_5.save

