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
