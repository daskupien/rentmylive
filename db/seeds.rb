# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Life.destroy_all

euan = User.create!(email: 'euan@email.com', password: '1234567', first_name: 'Euan', last_name: 'Last', address: 'street', gender: 'male', host_bio:'crazy guy from around')

claire = User.create!(email: 'claire@email.com', password: '1234567', first_name: 'Claire', last_name: 'Last', address: 'street', gender: 'female', host_bio:'crazy girls from france')

jim = User.create!(email: 'jim@email.com', password: '1234567', first_name: 'Jim', last_name: 'Last', address: 'street', gender: 'male', host_bio:'Jimmy trimmi')

Life.create!(description: 'This is a description', img_url: 'http://images4.fanpop.com/image/photos/23700000/Funny-random-23797915-1000-981.jpg', price_per_day: 100, city: 'New York', job: 'stripper', family: 'all weird people', relationship: 'paired', hobby: 'dancing', user_id: euan.id)

Life.create!(description: 'This is a description', img_url: 'https://media.nesta.org.uk/images/Predictions-2019_Twitter_02.width-1200.png', price_per_day: 200, city: 'Berlin', job: 'gardener', family: 'all weird people', relationship: 'paired', hobby: 'dancing', user_id: claire.id)

Life.create!(description: 'This is a description', img_url: 'http://images2.fanpop.com/image/photos/14300000/Beautiful-Wallpaper-random-14312356-2560-1600.jpg', price_per_day: 150, city: 'Munich', job: 'shark saver', family: 'too many', relationship: 'paired', hobby: 'dancing', user_id: jim.id)
