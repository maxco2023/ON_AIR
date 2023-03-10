User.all.each do |user|
  user.photo.purge
end

Club.all.each do |club|
  club.photo.purge
end

User.destroy_all
Club.destroy_all
Booking.destroy_all

user1 = User.new(
  first_name: "Julie",
  last_name: "Brunet",
  phone_number: "06 75 64 73 89",
  biography: "Pendant mon adolescence, je suis des cours au théâtre de la Graine puis je parfais son apprentissage à l’atelier d’improvisation « Les Thélémites ». A 20 ans, je quitte le sud pour m’installer à Paris afin de compléter ma formation de comédienne au cours Florent.",
  email: "julieb@lewagon.org",
  password: "123456"
)
user1.photo.attach(
  io: File.open('public/images/julie.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)

user1.save!

club1 = Club.new(
  name: "Golden Comedy Club",
  address: "4 Rue de la Huchette, 75005 Paris",
  description: "Ne dit-on pas que rire permet d'augmenter l'espérance de vie ? Deviens immortel grâce au Golden Comedy Club ! Prépare tes zygomatiques car le George Café te réserve une soirée unique avec le meilleur de la scène stand-up parisienne.",
  phone_number: "06 21 34 51 01",
  capacity: 30,
  category: "Bar",
  hour_price: 12,
  user_id: user1.id
)
club1.photo.attach(
  io: File.open('public/images/bar1.jpeg'),
  filename: 'anyname.jpeg', # use the extension of the attached file here
  content_type: 'image/jpeg' # use the mime type of the attached file here
)
club1.save!

user2 = User.new(
  first_name: "Maxime",
  last_name: "Coquerelle",
  phone_number: "06 75 64 83 89",
  biography: "C'est à l'adolescence que je découvre une passion pour le théâtre et la comédie. Je joue dans plusieurs courts-métrages dont Pas de cerises. Cet attrait pour le jeu me pousse à faire des études dans les arts du spectacle avant de partir tenter sa chance à Paris.",
  email: "maximec@lewagon.org",
  password: "123456"
)
user2.photo.attach(
  io: File.open('public/images/max.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)
user2.save!

club2 = Club.new(
  name: "Panam Comedy Club",
  address: "14, Rue de la Fontaine au Roi - 75011 PARIS",
  description: "Le Paname Comedy Club vous donne rendez-vous pour une heure de stand up avec le meilleur des one man show des humoristes du moment. Ils sont drôles, incisifs, hilarants, redoutables ou tout simplement charmants. Le Paname Comedy Club c'est une heure de fous rires garantie !",
  phone_number: "06 38 43 70 87",
  capacity: 20,
  category: "Comedy Club",
  hour_price: 18,
  user_id: user2.id
)
club2.photo.attach(
  io: File.open('public/images/paname.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)
club2.save!

user3 = User.new(
  first_name: "Amélie",
  last_name: "Berthier",
  phone_number: "06 15 64 83 89",
  biography: "J'ai toujours fait mon show, mais devant mes clients. Relations Publiques pendant 10 ans, je décide de tout lâcher pour enfin être moi-même et partager mon univers mais cette fois en montant sur scène.",
  email: "amélieb@lewagon.org",
  password: "123456"
)
user3.photo.attach(
  io: File.open('public/images/amelie.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)
user3.save!

user4 = User.new(
  first_name: "Bastien",
  last_name: "Lafont",
  phone_number: "06 15 34 83 89",
  biography: "Finalement c’est juste l’histoire d’un trentenaire normal qui a décidé de monter à Paris parce qu’il savait pas trop quoi faire de sa vie, et qui a décidé de répondre aux trop nombreuses questions qui se posaient par des blagues.",
  email: "bastienl@lewagon.org",
  password: "123456"
)
user4.photo.attach(
  io: File.open('public/images/bastien.jpeg'),
  filename: 'anyname.jpg', # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)
user4.save!

booking1 = Booking.new(
  start_date: "12/05/2023",
  end_date: "13/05/2023",
  club_id: club1.id,
  user_id: user3.id
)
booking1.save!

booking2 = Booking.new(
  start_date: "16/05/2023",
  end_date: "17/05/2023",
  club_id: club2.id,
  user_id: user4.id
)
booking2.save!

userl = User.new(
  first_name: "Georges",
  last_name: "Moustaki",
  phone_number: "07 25 46 83 82",
  biography: "Même si je parle encore le français avec un accent de touriste allemand, être un étranger n'est plus une excuse. Je dois maintenant faire face à toutes les problématiques d'un quarantenaire franco-juif-new-yorkais pacsé avec 3 enfants en bas âge.",
  email: "georgesm@lewagon.org",
  password: "123456"
)
userl.photo.attach(
  io: File.open('public/images/georges.jpeg'),
  filename: 'anyname.jpeg', # use the extension of the attached file here
  content_type: 'image/jpeg' # use the mime type of the attached file here
)
userl.save!

clubl1 = Club.new(
  name: "Le Fridge Comedy",
  address: "164 Rue Saint-Denis, 75002 Paris",
  description: "Restaurant intimiste et comedy club accueillant des one-man-show en soirée et proposant des repas légers, du vin et des cocktails.",
  phone_number: "06 21 34 51 01",
  capacity: 50,
  category: "Restaurant",
  hour_price: 20,
  user_id: userl.id
)
clubl1.photo.attach(
  io: File.open('public/images/fridge.png'),
  filename: 'anyname.png', # use the extension of the attached file here
  content_type: 'image/png' # use the mime type of the attached file here
)
clubl1.save!

clubl2 = Club.new(
  name: "Le Jamel Comedy Club",
  address: "42 Bd de Bonne Nouvelle, 75010 Paris",
  description: "Un bar-lounge et une scène accueillant de jeunes talents pour des spectacles d'humour et des jam sessions.",
  phone_number: "06 32 44 52 11",
  capacity: 60,
  category: "Comedy Club",
  hour_price: 18,
  user_id: userl.id
)
clubl2.photo.attach(
  io: File.open('public/images/jamel.png'),
  filename: 'anyname.png', # use the extension of the attached file here
  content_type: 'image/png' # use the mime type of the attached file here
)
clubl2.save!

clubl3 = Club.new(
  name: "La Scène Barbès",
  address: "11 Rue d'Oran, 75018 Paris",
  description: "La Scène Barbès est une salle de spectacles principalement axée sur le stand-up. Vous pourrez aussi y découvrir des scènes musicales le week-end.",
  phone_number: "01 42 51 14 80",
  capacity: 30,
  category: "Comedy Club",
  hour_price: 14,
  user_id: userl.id
)
clubl3.photo.attach(
  io: File.open('public/images/scene.png'),
  filename: 'anyname.png', # use the extension of the attached file here
  content_type: 'image/png' # use the mime type of the attached file here
)
clubl3.save!

clubl4 = Club.new(
  name: "Café Oscar",
  address: "155 Rue Montmartre, 75002 Paris",
  description: "Chaque soir, les meilleurs humoristes parisiens dans l'atmosphère intimiste du mythique Café Oscar !",
  phone_number: "01 42 21 09 61",
  capacity: 20,
  category: "Café",
  hour_price: 12,
  user_id: userl.id
)
clubl4.photo.attach(
  io: File.open('public/images/bar2.png'),
  filename: 'anyname.png', # use the extension of the attached file here
  content_type: 'image/png' # use the mime type of the attached file here
)
clubl4.save!

clubl5 = Club.new(
  name: "The Junk",
  address: "37 R. Quincampoix, 75004 Paris",
  description: "The Joke est un concept qui a été pensé par des amoureux du Stand up. Du bar jusqu’à la salle de spectacle au fond, nous combinons un environnement sobre et chic.",
  phone_number: "01 88 40 03 40",
  capacity: 30,
  category: "Comedy Club",
  hour_price: 15,
  user_id: userl.id
)
clubl5.photo.attach(
  io: File.open('public/images/joke.png'),
  filename: 'anyname.png', # use the extension of the attached file here
  content_type: 'image/png' # use the mime type of the attached file here
)
clubl5.save!

clubl6 = Club.new(
  name: "Le Loup Club",
  address: "7 Rue de l'Échelle, 75001 Paris",
  description: "Le Loup Comedy et sa meute d’humoristes vous offre un spectacle rythmé par les punchlines. C’est l’occasion de voir les grosses pointures et nouvelles pépites de l'humour francophone!",
  phone_number: "01 32 69 84 39",
  capacity: 40,
  category: "Comedy Club",
  hour_price: 16,
  user_id: userl.id
)
clubl6.photo.attach(
  io: File.open('public/images/resto1.jpeg'),
  filename: 'anyname.jpeg', # use the extension of the attached file here
  content_type: 'image/jpeg' # use the mime type of the attached file here
)
clubl6.save!
