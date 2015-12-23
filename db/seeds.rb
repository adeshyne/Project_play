# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(username:  "adeade",
             email: "ade@yahoo.com",
             password:              "day2day",
             password_confirmation: "day2day",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  username  = Faker::Name.name
  email = "example-#{n+1}@play.com"
  password = "password"
  User.create!(username:  username,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(content: content) }
end