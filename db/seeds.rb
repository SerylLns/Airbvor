require 'open-uri'
Animal.destroy_all
User.destroy_all

User.create!(
  username: "Mathou",
  email: "mathou@lewagon.com",
  password: "password"
)
User.create!(
  username: "Jéremy",
  email: "jerem@lewagon.com",
  password: "password"
)
User.create!(
  username: "Yanis",
  email: "yanis@lewagon.com",
  password: "password"
)
User.create!(
  username: "Seryl",
  email: "seryl@lewagon.com",
  password: "password"
)
Animal.create!(
  user: User.find_by(username: "Yanis"),
  specie: "lapin",
  image_url: "https://static.teteamodeler.com/media/cache/thumb_400/lalimentation-du-lapin-.jpeg",
  name: "Jacob",
  description: "Rongeur de compétition, tondre c'est sa religion. Et il fait ça avec passion !",
  price_per_day: 25,
  address: "124 Chemin du Vallon de la Galère, Gémenos"
)
file = URI.open("https://cdn.pixabay.com/photo/2018/12/08/22/00/rabbit-3864120_1280.jpg")
Animal.last.photos.attach(io: file, filename: "rabbit1.jpg", content_type: 'image/jpg' )
file = URI.open("https://cdn.pixabay.com/photo/2016/12/13/00/13/rabbit-1903016_1280.jpg")
Animal.last.photos.attach(io: file, filename: "rabbit2.jpg", content_type: 'image/jpg' )
file = URI.open("https://cdn.pixabay.com/photo/2019/07/31/19/21/hare-4375952_1280.jpg")
Animal.last.photos.attach(io: file, filename: "rabbit3.jpg", content_type: 'image/jpg' )

Animal.create!(
  user: User.find_by(username: "Jéremy"),
  specie:"vegan",
  image_url:"https://reductress.com/wp-content/uploads/2014/07/woman-eating-apple.jpg",
  name: "Pomme",
  description: "Pomme est une vegane accomplie, brouter est sa destinée.",
  price_per_day: 5,
  address: "1 Rue de la Carotte, 59710 Ennevelin"
)

file = URI.open("https://reductress.com/wp-content/uploads/2014/07/woman-eating-apple.jpg")
Animal.last.photos.attach(io: file, filename: "vegan1.jpg", content_type: 'image/jpg' )

Animal.create!(
  user: User.find_by(username: "Mathou"),
  specie: "escargot",
  image_url: "https://tse2.mm.bing.net/th?id=OIP.IJjzbq9zVI7JzpVY3vEweQHaD3&pid=Api&P=0&w=525&h=571",
  name: "Karlo",
  description: "Lent mais consienscieux, il appliquera en bonus un lubrifiant naturel dont il à le secret (Karlo etant trés fragile une caution de 1000€ vous sera demandée, merci de ne pas les écraser !)",
  price_per_day: 1000,
  address: "Ruelle de la Coquille, 89570 Neuvy-Sautour"
)
file = URI.open("https://tse2.mm.bing.net/th?id=OIP.IJjzbq9zVI7JzpVY3vEweQHaD3&pid=Api&P=0&w=525&h=571")
Animal.last.photos.attach(io: file, filename: "escargot1.jpg", content_type: 'image/jpg' )

Animal.create!(
  user: User.find_by(username: "Mathou"),
  specie: "lama",
  image_url: "https://reductress.com/wp-content/uploads/2014/07/woman-eating-apple.jpg",
  name: "Serge",
  description: "Aussi bon brouteur que chanteur, Serge ou Sergio (en portugais) vous proposera egalement un service de lavage de vitre.",
  price_per_day: 400,
  address: "Lamastraat, 1180 Uccle Belgique"

)
file = URI.open("https://idata.over-blog.com/1/50/49/04//Lama.jpg")
Animal.last.photos.attach(io: file, filename: "lama1.jpg", content_type: 'image/jpg' )

Animal.create!(
  user: User.find_by(username: "Mathou"),
  specie: "vegan",
  image_url:"https://tse1.mm.bing.net/th?id=OIP.v0HbINVwEZPdOcym9LL78wHaE8&pid=Api&P=0&w=560&h=574",
  name: "Pierre Boulgour",
  description:"Spécialiste des grands espaces, il deploiera tout son potentiel aprés ingurgitation de son met favoris 'Le Boulghour'",
  price_per_day: 43,
  address: "53 Chemin de l'Herbe, 65400 Argelès-Gazost"
)
file = URI.open("https://animalequality.org/app/uploads/2014/04/patrik-herbe.jpg")
Animal.last.photos.attach(io: file, filename: "vegan4.jpg", content_type: 'image/jpg' )
