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