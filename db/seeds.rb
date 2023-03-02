user1 = User.new(
  first_name: "Julie",
  last_name: "Brunet",
  phone_number: "06 75 64 73 89",
  biography: "Après des études et diverses expériences en finance d'entreprise, je souhaite désormais apprendre à coder pour devenir développeuse web en freelance.",
  email: "julieb@lewagon.org",
  password: "123456"
)
user1.save!

club1 = Club.new(
  name: "Golden Comedy Club",
  address: "11 rue blabla Paris",
  description: "Ne dit-on pas que rire permet d'augmenter l'espérance de vie ? Deviens immortel grâce au Golden Comedy Club ! Prépare tes zygomatiques car le George Café te réserve une soirée unique avec le meilleur de la scène stand-up parisienne. Attends-toi à une programmation en or 100% secrète qui change à chaque session avec 4 à 6 humoristes de toutes les générations (les stars d'hier, d'aujourd'hui et de demain), dans une ambiance fun, délirante, conviviale et décontractée.",
  phone_number: "06 21 34 51 01",
  capacity: 30,
  category: "Bar",
  hour_price: 12,
  user_id: user1.id
)
club1.save!

user2 = User.new(
  first_name: "Maxime",
  last_name: "Coquerelle",
  phone_number: "06 75 64 83 89",
  biography: "I was business developper for a big company, and I've always wanted to learn to code, to be able to develop web site and web app, so I decided to attend the Bootcamp. After few years of experience I'd like to become a freelance.",
  email: "maximec@lewagon.org",
  password: "123456"
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
club2.save!

user3 = User.new(
  first_name: "Amélie",
  last_name: "Berthier",
  phone_number: "06 15 64 83 89",
  biography: "Récemment diplômée d'un Master of Science en Aromatique Alimentaire, je ne trouvais pas d'emploi dans ce domaine. J'ai alors décidé de rebondir rapidement avant qu'il ne soit trop tard. Etant entourée de développeurs depuis plusieurs années, Le Wagon est vite devenu pour moi une opportunité de reconversion rapide.",
  email: "amélieb@lewagon.org",
  password: "123456"
)
user3.save!

user4 = User.new(
  first_name: "Bastien",
  last_name: "Lafont",
  phone_number: "06 15 34 83 89",
  biography: "Ingénieur généraliste, j'ai occupé pendant plus de 6 ans le poste de chef de projet dans une PME en forte croissance opérant dans les secteurs du nucléaire et de l’industrie. Aujourd’hui, je souhaite rejoindre un nouveau domaine d’activité qui m’a toujours attiré : la tech. Après le Wagon et quelques années d’expérience en entreprise, j’envisage deux possibilités : évoluer vers de la gestion de projet ou Freelance full-stack.",
  email: "bastienl@lewagon.org",
  password: "123456"
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
  biography: "Même si je parle encore le français avec un accent de touriste allemand, être un étranger n'est plus une excuse. Je dois maintenant faire face à toutes les problématiques d'un quarantenaire franco-juif-new-yorkais pacsé avec 3 enfants en bas âge. Comment réagir quand ta fille corrige ton français, quand ta nana reçoit une banane en pleine gueule, quand ta femme de ménage trouve ta maison dégueulasse, quand t'es une cigale perdue dans un monde de fourmis ? Les choses de la vie...",
  email: "georgesm@lewagon.org",
  password: "123456"
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
clubl2.save!

clubl3 = Club.new(
  name: "La Scène Barbès",
  address: "11 Rue d'Oran, 75018 Paris",
  description: "La Scène Barbès est une salle de spectacles principalement axée sur le stand-up. Vous pourrez aussi y découvrir des scènes musicales le week-end. La programmation du lieu est à découvrir sur notre site. Dans un décor et une ambiance inspirée des comedy club New-Yorkais, vous découvrirez 5 humoristes qui se succèderont pour une heure de show pour le plateau des artistes confirmés.",
  phone_number: "01 42 51 14 80",
  capacity: 30,
  category: "Comedy Club",
  hour_price: 14,
  user_id: userl.id
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
clubl4.save!

clubl5 = Club.new(
  name: "The Junk",
  address: "37 R. Quincampoix, 75004 Paris",
  description: "The Joke est un concept qui a été pensé par des amoureux du Stand up. Du bar jusqu’à la salle de spectacle au fond, nous combinons un environnement sobre et chic parsemé d’une dose d’humour pour vous donner la meilleure expérience possible. Rien de mieux qu’un bon verre avec un spectacle",
  phone_number: "01 88 40 03 40",
  capacity: 30,
  category: "Comedy Club",
  hour_price: 15,
  user_id: userl.id
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
clubl6.save!
