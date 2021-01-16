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


skill_1 = Skill.create(
  name: "Electricien",
  )

skill_2 = Skill.create(
  name: "Plombier",
  )

skill_3 = Skill.create(
  name: "Chauffagiste",
  )

skill_4 = Skill.create(
  name: "Carreleur",
  )

skill_5 = Skill.create(
  name: "Entreprise generale du batiment",
  )


