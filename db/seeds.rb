user1 = User.new(
  first_name: "julie",
  last_name: "brunet",
  phone_number: "0675647389",
  biography: "blablablablabablablabalbalabalbalabalablabalbalbalabalbalabalbalablabalbalabalbalbaalbalabalbalabalba",
  email: "julie@msn.com",
  password: "123456"
)
user1.save!

club1 = Club.new(
  name: "comedy club",
  address: "11 rue blabla Paris",
  description: "blablablablabablablabalbalabalbalabalablabalbalbalabalbalabalbalablabalbalabalbalbaalbalabalbalabalba",
  phone_number: "0601010101",
  capacity: 30,
  category: "restaurant",
  hour_price: 10,
  user_id: user1.id
)
club1.save!

user2 = User.new(
  first_name: "maxime",
  last_name: "coquerelle",
  phone_number: "0675648389",
  biography: "blablablablabablablabalbalabalbalabalablabalbalbalabalbalabalbalablabalbalabalbalbaalbalabalbalabalba",
  email: "max@gmail.com",
  password: "123456"
)
user2.save!

club2 = Club.new(
  name: "autre comedy club",
  address: "12 rue blabla Paris",
  description: "blablablaalbalabalbalabalbaalbalabalbalabalbaalbalabalbalabalbaalbalabalbalabalbaalbalabalbalabalba2",
  phone_number: "0601010102",
  capacity: 20,
  category: "restau",
  hour_price: 2,
  user_id: user2.id
)
club2.save!

user3 = User.new(
  first_name: "amelie",
  last_name: "berthier",
  phone_number: "0615648389",
  biography: "blablablablabablablabalbalabalbalabalablabalbalbalabalbalabalbalablabalbalabalbalbaalbalabalbalabalba",
  email: "amelie@gmail.com",
  password: "123456"
)
user3.save!

user4 = User.new(
  first_name: "bastien",
  last_name: "lafont",
  phone_number: "0615348389",
  biography: "blablablablabablablabalbalabalbalabalablabalbalbalabalbalabalbalablabalbalabalbalbaalbalabalbalabalba",
  email: "bastien@gmail.com",
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
