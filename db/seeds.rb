require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting seed"
50.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "password")
  # user.save
end
user_array = User.all
25.times do
  challenge = Challenge.new(
    title: "#{rand(50)} day #{Faker::Hacker.verb} challenge",
    detail: Faker::Quote.yoda,
    start_date: Faker::Date.forward(50),
    duration: rand(50),
    cost: rand(500.00),
    metric_verb: Faker::Verb.base,
    metric_value: rand(50.0),
    metric_frequency: ["day", "week", "month", "decade"].sample,
    metric_operator: ["greater than", "less than", "equal to"].sample,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    location: Faker::Address.full_address)
  challenge.user = user_array.sample
  challenge.save!
end
challenge_array = Challenge.all

25.times do
  participant = Participant.new
  participant.user = user_array.sample
  participant.challenge = challenge_array.sample
  participant.save!
end
puts "seed complete"
