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

euan = User.create!(email: 'euan@email.com', password: '1234567', first_name: 'Euan', last_name: 'Hunter', address: 'street', gender: 'male', host_bio:'crazy guy from around')

claire = User.create!(email: 'claire@email.com', password: '1234567', first_name: 'Claire', last_name: 'Brady', address: 'street', gender: 'female', host_bio:'crazy girls from france')

jim = User.create!(email: 'jim@email.com', password: '1234567', first_name: 'Jim', last_name: 'Carrey', address: 'street', gender: 'male', host_bio:'There is no business like show business')

tom = User.create!(email: 'tom@email.com', password: '1234567', first_name: 'Tom', last_name: 'Riddle', address: 'street', gender: 'male', host_bio:'I love Harry Potter')

sarah = User.create!(email: 'sarah@email.com', password: '1234567', first_name: 'Sarah', last_name: 'Westminster', address: 'street', gender: 'female', host_bio:'Tea time')

valerie = User.create!(email: 'valerie@email.com', password: '1234567', first_name: 'Valerie', last_name: 'Holland', address: 'street', gender: 'female', host_bio:'Code Hero')

john = User.create!(email: 'john@email.com', password: '1234567', first_name: 'John', last_name: 'Lemon', address: 'street', gender: 'male', host_bio:'Music is my business')

west = User.create!(email: 'west@email.com', password: '1234567', first_name: 'West', last_name: 'Kanye', address: 'street', gender: 'female', host_bio:'West is cool')

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
file = URI.open('https://res.cloudinary.com/rentmylife/image/upload/v1614168095/assets/banner_bzvrks.jpg')
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
file = URI.open('https://res.cloudinary.com/rentmylife/image/upload/v1614175713/assets/alexander-dummer-UH-xs-FizTk-unsplash_nfwq6m.jpg')
life_3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_3.save

life_4 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: tom.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://res.cloudinary.com/rentmylife/image/upload/v1614175712/assets/kinga-cichewicz-aHu_xuRvsZ4-unsplash_qhxh3r.jpg')
life_4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_4.save

life_5 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: sarah.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://res.cloudinary.com/rentmylife/image/upload/v1614175710/assets/sai-de-silva-YLMs82LF6FY-unsplash_fhv2s8.jpg')
life_5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_5.save

life_6 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: valerie.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://res.cloudinary.com/rentmylife/image/upload/v1614175707/assets/limor-zellermayer-qHYC8ajXLB0-unsplash_cn3gee.jpg')
life_6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_6.save

life_7 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: john.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://res.cloudinary.com/rentmylife/image/upload/v1614175708/assets/esther-ann-glpYh1cWf0o-unsplash_x8xr93.jpg')
life_7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_7.save

life_8 = Life.new(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: west.id,
    img_url: 'https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
)
file = URI.open('https://res.cloudinary.com/rentmylife/image/upload/v1614175306/assets/nathan-dumlao-R4O7S1KoF6I-unsplash_ez77ex.jpg')
life_8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_8.save

puts 'finished'
