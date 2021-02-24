# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.destroy_all
Life.destroy_all
puts 'creating users'
euan = User.create!(email: 'euan@email.com', password: '1234567', first_name: 'Euan', last_name: 'Last', address: 'street', gender: 'male', host_bio:'crazy guy from around')

claire = User.create!(email: 'claire@email.com', password: '1234567', first_name: 'Claire', last_name: 'Last', address: 'street', gender: 'female', host_bio:'crazy girls from france')

jim = User.create!(email: 'jim@email.com', password: '1234567', first_name: 'Jim', last_name: 'Last', address: 'street', gender: 'male', host_bio:'Jimmy trimmi')
puts 'finished'
puts 'creating lives'
life_1 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: euan.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
life_1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_1.save

life_2 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: claire.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
life_2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_2.save

life_3 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: jim.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
life_3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_3.save
puts 'finished'
