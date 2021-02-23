# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(email: 'euan@email.com', encrypted_password: '1234', first_name: 'Euan', last_name: 'Last', address: 'street', gender: 'male', host_bio:'crazy guy from around')

# User.create(email: 'claire@email.com', encrypted_password: '1234', first_name: 'Claire', last_name: 'Last', address: 'street', gender: 'female', host_bio:'crazy girls from france')

# User.create(email: 'jim@email.com', encrypted_password: '1234', first_name: 'Jim', last_name: 'Last', address: 'street', gender: 'male', host_bio:'Jimmy trimmi')

# TODO Use the ones above after migration works and delete the three down here

User.create(email: 'euan@email.com', encrypted_password: '1234')
User.create(email: 'claire@email.com', encrypted_password: '1234')
User.create(email: 'jim@email.com', encrypted_password: '1234')


Life.create(description: 'This is a description', image: 'http://images4.fanpop.com/image/photos/23700000/Funny-random-23797915-1000-981.jpg', price_per_day: 100, city: 'New York', job: 'stripper', family: 'all weird people', relationship: 'paired', hobby: 'dancing', user_id: 1)

Life.create(description: 'This is a description', image: 'https://media.nesta.org.uk/images/Predictions-2019_Twitter_02.width-1200.png', price_per_day: 200, city: 'Berlin', job: 'gardener', family: 'all weird people', relationship: 'paired', hobby: 'dancing', user_id: 2)

Life.create(description: 'This is a description', image: 'http://images2.fanpop.com/image/photos/14300000/Beautiful-Wallpaper-random-14312356-2560-1600.jpg', price_per_day: 150, city: 'Munich', job: 'shark saver', family: 'too many', relationship: 'paired', hobby: 'dancing', user_id: 3)
