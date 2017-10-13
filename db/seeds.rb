User.destroy_all

wayne = User.create!(
  email: 'wayne.louwrens@gmail.com',
  password: '123456'
)

Event.create!(
  name: "H2O Foam Festival",
  description: "The largest Foam Festival ever. Six Arenas, DJs & Party",
  location: "@Amsterdam Beach Front",
  price: 75,
  capacity: 3000,
  includes_food: false,
  includes_drinks: false,
  starts_at: DateTime.parse("10/11/2017 08:00"),
  ends_at: DateTime.parse("10/11/2017 18:00"),
  active: true,
  user: wayne
)
