# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
    User.create(email: "Alex@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Bob@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Jemima@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Sinclair@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Samantha@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Richard@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Alice@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Troll@test.com", password: "password", password_confirmation: "password")
    User.create(email: "Jack@test.com", password: "password", password_confirmation: "password")
end
