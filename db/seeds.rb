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

santi = User.create!(email: 'santi@lewagon.com', password: '1234567', first_name: 'Santi*', last_name: 'Sanchez', address: 'Somewhere in Berlin', gender: 'male', host_bio:'bananas')

valerie = User.create!(email: 'valerie@lewagon.com', password: '1234567', first_name: 'Valerie', last_name: 'Schraauwers', address: 'Some other street in Berlin', gender: 'female', host_bio:'Wa_t to be a ba_ch man_ger of the best bat_h ev_r? Hur_y up on_y 2.5 w_eks left. Damn. So_ry for the inc_mplet_ pict_re -  th_re is som_thin_ with m_ Wif_')

andy = User.create!(email: 'andy@lewagon.com', password: '1234567', first_name: 'Andy', last_name: 'Baranov', address: '********** (top secret)', gender: 'male', host_bio:'data')

tom = User.create!(email: 'tom@email.com', password: '1234567', first_name: 'Tom', last_name: 'Riddle', address: 'street', gender: 'male', host_bio:'I love Harry Potter')

sarah = User.create!(email: 'sarah@lewagon.com', password: '1234567', first_name: 'Sarah', last_name: 'O’Grady', address: 'Central London', gender: 'female', host_bio:'Tea time')

euan = User.create!(email: 'euan@lewagon.com', password: '1234567', first_name: 'Euan', last_name: 'Gillespie-Taylor', address: 'Wales Greenland', gender: 'male', host_bio:'Code Hero')

john = User.create!(email: 'john@email.com', password: '1234567', first_name: 'John', last_name: 'Lemon', address: 'street', gender: 'male', host_bio:'Music is my business')

west = User.create!(email: 'west@email.com', password: '1234567', first_name: 'West', last_name: 'Kanye', address: 'street', gender: 'female', host_bio:'West is cool')

puts 'creating lives'

life_1 = Life.new(
    description: 'In my life you will learn to love bananas. Each of my students also loves Bananas. If you think about it - everyone loves bananas.',
    price_per_day: 225,
    city: 'Berlin',
    job: 'Head Teacher (often found downstairs)',
    family: 'Allll my students',
    relationship: 'In love with the big spider in my room',
    hobby: 'jajajajajaja',
    user_id: santi.id,
    img_url: 'http://drive.google.com/uc?export=view&id=1dLXhLNcBVxUhcj0LMAqGVIwaV6FtIxIC'
)
file = URI.open('http://drive.google.com/uc?export=view&id=1dLXhLNcBVxUhcj0LMAqGVIwaV6FtIxIC')
life_1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_1.save

life_2 = Life.new(
    description: 'Wa_t to be a ba_ch man_ger of the best bat_h ev_r? Hur_y up on_y 2.5 w_eks left. Damn. So_ry for the inc_mplet_ pict_re -  th_re is som_thin_ with m_ Wif_',
    price_per_day: 275,
    city: 'Berlin',
    job: 'Batch Manager at Le Wagon',
    family: 'Some Dutch dudes',
    relationship: 'Mystical',
    hobby: 'Annoy Santi',
    user_id: valerie.id,
    img_url: 'http://drive.google.com/uc?export=view&id=10Tiw0AIcT2z_2c5G2fwxv9ETFomQQLnY'
)
file = URI.open('http://drive.google.com/uc?export=view&id=10Tiw0AIcT2z_2c5G2fwxv9ETFomQQLnY')
life_2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_2.save

life_3 = Life.new(
    description: 'Wenn du Daten liebst und Spaß daran hast dich wegen Studenten zu quälen, bist du bei mir genau richtig. (edited)',
    price_per_day: 5000,
    city: 'Unknown',
    job: 'I manage all data, I mean ALL of it!',
    family: 'Wife and kids in the background',
    relationship: 'deep connection to red bull',
    hobby: 'Juggling with data and changing outfits frequently',
    user_id: andy.id,
    img_url: 'http://drive.google.com/uc?export=view&id=1qAF9KtA0gZo_4lAe6kanCQcv_-53HeEC'
)
file = URI.open('http://drive.google.com/uc?export=view&id=1qAF9KtA0gZo_4lAe6kanCQcv_-53HeEC')
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
    description: 'Dear Sir or Madam. My life will teach you the benefits of elite etiquette. Moreover, you will rule over England. Sincerely, the Queen',
    price_per_day: 400,
    city: 'London',
    job: 'Monarch',
    family: 'Blue Bloods',
    relationship: 'The king',
    hobby: 'Watch my subordinates',
    user_id: sarah.id,
    img_url: 'http://drive.google.com/uc?export=view&id=1fhaBbnCCbZqBRBjbQNtlU-Vb0Zy6eGY8'
)
file = URI.open('http://drive.google.com/uc?export=view&id=1fhaBbnCCbZqBRBjbQNtlU-Vb0Zy6eGY8')
life_5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
life_5.save

life_6 = Life.new(
    description: "Do you like challenges? I offer you the opportunity to train your patience. The group of GreenFunder assigned to me can't be beaten in terms of clumsiness.",
    price_per_day: 200,
    city: 'Cardiff',
    job: 'TA under torture',
    family: 'Nice people who heal my mental wounds ',
    relationship: 'You will find out if you book',
    hobby: 'not GreenFunder!!',
    user_id: euan.id,
    img_url: 'http://drive.google.com/uc?export=view&id=1WOMH77vWsywjXyT47QxFoFuPX-LHZxVB'
)
file = URI.open('http://drive.google.com/uc?export=view&id=1WOMH77vWsywjXyT47QxFoFuPX-LHZxVB')
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
