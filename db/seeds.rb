Category.destroy_all
Event.delete_all
User.destroy_all

sixties = Category.create(name: "Sixties")
seventies = Category.create(name: "Seventies")
gatsby = Category.create(name: "Gatsby")
bo_and_ho = Category.create(name: "Bo & Ho")
corporate = Category.create(name: "Corporate")
beach = Category.create(name: "Beach")
kiddies = Category.create(name: "Kiddies")
music_show = Category.create(name: "Music")


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
  user: wayne,
  categories: [gatsby,music_show]
)
