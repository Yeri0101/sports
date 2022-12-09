require "faker"

User.destroy_all

Activity.destroy_all

Review.destroy_all

Booking.destroy_all

8.times do
  User.create!(
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    country_code: Faker::PhoneNumber.country_code,
    email: Faker::Internet.email(domain: "sports.osc-fr1.scalingo.io"),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "maximilien.lanz@lewagon.com",
    phone_number: Faker::PhoneNumber.phone_number,
    postcode: Faker::Address.postcode,
    state: Faker::Address.state
  )
end

a = User.create!(
  address: "Rue de Lausanne 64",
  city: "Renens",
  country: "Switzerland",
  country_code: "+41",
  email: "maximilien.lanz@lewagon.com",
  first_name: "Maximilien",
  last_name: "LANZ",
  password: "maximilien.lanz@lewagon.com",
  phone_number: "76 373 33 77",
  postcode: "1020",
  state: "Canton de Vaud"
)

Activity.create!(
  address: "Mühlebachstrasse 172, 8008 Zürich, Switzerland",
  category: "Running",
  description: "Does waking up early in the morning scare you? If so, you may well miss out on one of the foot races with views that are simply breathtaking. Believe me.",
  end_date: "2022-12-09 06:45:00 UTC",
  name: "Running",
  start_date: "2022-12-09 05:45:00 UTC",
  user: a
)

Activity.create!(
  address: "Matteschürli 84, 1718 Rechthalten, Switzerland",
  category: "Yoga",
  description: "Let me point out that you seem to be extremely tired. If your days are very often negative, let me remedy this by inviting you to travel through the breath.",
  end_date: "2022-12-10 18:15:00 UTC",
  name: "Yoga",
  start_date: "2022-12-10 17:15:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Rue des Cerisiers 1, 1530 Payerne, Switzerland",
  category: "Football",
  description: "Today we are in the middle of the World Cup in Qatar. I invite you to come and build a team, with me, that could potentially become the best of all.",
  end_date: "2022-12-25 11:00:00 UTC",
  name: "Football",
  start_date: "2022-12-25 10:00:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Steinmattstrasse 17-7, 3920 Zermatt, Switzerland",
  category: "Snowboard",
  description: "If you are a motivated person who is currently looking for extreme sensations, I propose you to join me up there, in order to hurtle down the snowy slopes.",
  end_date: "2023-01-15 17:30:00 UTC",
  name: "Snowboard",
  start_date: "2023-01-15 08:30:00 UTC",
  user: a
)

Activity.create!(
  address: "Route de Longirod, 1261 Marchissy, Switzerland",
  category: "Bicycle",
  description: "If you can easily get around by car, I would like to show you the place where I live, which is surrounded by dense forests that are ideal for leisurely cycling.",
  end_date: "2023-02-05 17:45:00 UTC",
  name: "Bicycle",
  start_date: "2023-02-05 16:45:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Piazza Indipendenza 3, 6900 Lugano, Switzerland",
  category: "Tennis",
  description: "I prefer to be very honest with you. If you think you have the level of play to maybe hope to beat me, then I will see you on the court and try to match me.",
  end_date: "2023-07-30 20:30:00 UTC",
  name: "Tennis",
  start_date: "2023-07-30 19:30:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Route du Grand-Paradis 7, 1874 Champéry, Switzerland",
  category: "Basketball",
  description: "You know, no matter how big you are, no matter how good you are, with me everyone is welcome. Come and play with me, and discover new sensations.",
  end_date: "2024-09-05 08:45:00 UTC",
  name: "Basketball",
  start_date: "2023-09-05 07:45:00 UTC",
  user: a
)

Activity.create!(
  address: "Schulgässli 4-8, 3715 Adelboden, Switzerland",
  category: "Swimming",
  description: "You may have dreamed of being able to swim across an entire ocean, but that day will never come. I can still try to make that dream come true.",
  end_date: "2024-03-17 15:30:00 UTC",
  name: "Swimming",
  start_date: "2023-03-17 14:30:00 UTC",
  user: a
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A very nice place to practice in peace and a very pleasant host",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Breathtaking views and an incredible atmosphere",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I would highly recommend this activity",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "An activity that clearly did not live up to my expectations",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A very good sport companion and a very motivating person",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I should have thought before booking it",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A meeting place that was very easy to reach by public transport",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I found myself alone on the spot and therefore I do not recommend this activity",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Difficulty far too high for my beginner level",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I rushed to book a new activity created by this host",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Even in the rain, I must admit that I had a lot of fun",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I am thinking of trying again as I was not entirely satisfied",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A very good feeling at the beginning but the duration was far too long",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I had to start a sporting activity because of my partner and it was fun in the end",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I do not recommend you to practice with this person",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Pleasant temperatures for the season and an ideal location",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Nothing more to say except that you should think twice before continuing",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I would not recommend with this overly competitive person",
  user: User.all.sample
)

18.times do
  Booking.create!(
    activity: Activity.all.sample,
    user: User.all.sample
  )
end
