# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({full_name: "Test User", email: "hi@aol.com", password: "go"})
User.create({full_name: "Fido", email: "fido@aol.com", password: "go"})
