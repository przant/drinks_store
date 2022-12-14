# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create admin and three users
# The first created user will hav 'Admin' role
User.create(
  [
    {
      name: 'Itachi',
      surname: 'Uchiha',
      email: 'itachi@konoha.com',
      password: 'susanoo123'
    },
    {
      name: 'Naruto',
      surname: 'Uzumaki',
      email: 'naruto@konoha.com',
      password: 'rasengan123'
    },
    {
      name: 'Luffy',
      surname: 'Monkey D.',
      email: 'monkeyd@strawhats.com',
      password: 'snakeman4'
    },
    {
      name: 'Zoro',
      surname: 'Shimotsuki',
      email: 'roronoa@strawhats.com',
      password: 'santoryou3'
    }
  ]
)

# Drink tests objects
10.times do |number|
  Drink.create(
    name: "Drink example##{number + 1}",
    description: "Description example for the drink##{number + 1}",
    ingredients: "Ingredients list for the drink##{number + 1}",
    price: 125.00
  )
end

# Snack tests objects
10.times do |number|
  Snack.create(
    name: "Snack example##{number + 1}",
    description: "Description example for the snack##{number + 1}",
    ingredients: "Ingredients list for the snack##{number + 1}",
    price: 125.00
  )
end

# Promo tests objects 
10.times do |number|
  Promo.create(
    name: "Promo example##{number + 1}",
    description: "Description example for the promo##{number + 1}",
    active: [true, false].sample,
    price: 125.00
  )
end
