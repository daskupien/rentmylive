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

euan = User.create!(email: 'euan@email.com', password: '1234567', first_name: 'Euan', last_name: 'Last', address: 'street', gender: 'male', host_bio:'crazy guy from around')

claire = User.create!(email: 'claire@email.com', password: '1234567', first_name: 'Claire', last_name: 'Last', address: 'street', gender: 'female', host_bio:'crazy girls from france')

jim = User.create!(email: 'jim@email.com', password: '1234567', first_name: 'Jim', last_name: 'Last', address: 'street', gender: 'male', host_bio:'Jimmy trimmi')

Life.create!(
    description: 'This is a description',
    price_per_day: 100,
    city: 'New York',
    job: 'stripper',
    family: 'all weird people',
    relationship: 'paired',
    hobby: 'dancing',
    user_id: euan.id
)
file = URI.open('https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
@life.img_url.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

# user2 = User.create(
#     first_name: "Tanya",
#     last_name: "Silverman",
#     location: "E1 6QR",
#     email: "tanya_s@gmail.com",
#     password: '123123',
#     description: 'Science fiction and dramatic novels are my bread and butter. There is nothing better than lighting some candles and reading in the bath',
#     )
#     file = URI.open('https://images.unsplash.com/photo-1525735765456-7f67273a9d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
#     @life.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

#     @book.photo.attach(io: cover_file, filename: 'cover.jpg', content_type: 'image/jpg')