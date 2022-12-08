require "faker"

User.destroy_all

Activity.destroy_all

Review.destroy_all

Booking.destroy_all

5.times do
  User.create!(
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    country_code: Faker::PhoneNumber.country_code,
    email: Faker::Internet.email(domain: "sports.osc-fr1.scalingo.io"),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password(min_length: 12, max_length: 24),
    phone_number: Faker::PhoneNumber.phone_number,
    postcode: Faker::Address.postcode,
    state: Faker::Address.state
  )
end

User.create!(
  address: "Rue de Lausanne 64",
  city: "Renens",
  country: "Switzerland",
  country_code: "+41",
  email: "maximilien.lanz@lewagon.com",
  first_name: "Maximilien",
  last_name: "LANZ",
  password: "PK^.DQ19yDx2",
  phone_number: "76 373 33 77",
  postcode: "1020",
  state: "Canton de Vaud"
)

User.create!(
  address: "Rue de Lausanne 64",
  city: "Renens",
  country: "Switzerland",
  country_code: "+33",
  email: "sylvain.maslard@lewagon.com",
  first_name: "Sylvain",
  last_name: "MASLARD",
  password: "3kxZzG#TvQ)V",
  phone_number: "6 66 29 82 47",
  postcode: "1020",
  state: "Canton de Vaud"
)

User.create!(
  address: "Rue de Lausanne 64",
  city: "Renens",
  country: "Switzerland",
  country_code: "+41",
  email: "yerinto.martinez@lewagon.com",
  first_name: "Yerinto",
  last_name: "MARTINEZ",
  password: "0WkDjeT*n4A#",
  phone_number: "76 536 06 58",
  postcode: "1020",
  state: "Canton de Vaud"
)

Activity.create!(
  address: "Mühlebachstrasse 172, 8008 Zürich, Switzerland",
  category: "Running",
  description: "Does waking up early in the morning scare you? If so, you may well miss out on one of the foot races with views that are simply breathtaking.",
  end_date: "2022-12-09 09:30:00 UTC",
  name: "Running",
  start_date: "2022-12-09 08:30:00 UTC",
  user: User.all.sample
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
  description: Faker::Lorem.sentence(word_count: 8, supplemental: false),
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
  user: User.all.sample
)

Activity.create!(
  address: "Route de Longirod, 1261 Marchissy, Switzerland",
  category: "Bicycle",
  description: Faker::Lorem.sentence(word_count: 8, supplemental: false),
  end_date: "2023-02-05 17:45:00 UTC",
  name: "Bicycle",
  start_date: "2023-02-05 16:45:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Piazza Indipendenza 3, 6900 Lugano, Switzerland",
  category: "Tennis",
  description: Faker::Lorem.sentence(word_count: 8, supplemental: false),
  end_date: "2023-07-30 20:30:00 UTC",
  name: "Tennis",
  start_date: "2023-07-30 19:30:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Route du Grand-Paradis 7, 1874 Champéry, Switzerland",
  category: "Basketball",
  description: Faker::Lorem.sentence(word_count: 8, supplemental: false),
  end_date: "2024-09-05 08:45:00 UTC",
  name: "Basketball",
  start_date: "2023-09-05 07:45:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Schulgässli 4-8, 3715 Adelboden, Switzerland",
  category: "Swimming",
  description: Faker::Lorem.sentence(word_count: 8, supplemental: false),
  end_date: "2024-03-17 15:30:00 UTC",
  name: "Swimming",
  start_date: "2023-03-17 14:30:00 UTC",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A very nice place to practice in peace and a very pleasant host",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Breathtaking views and an incredible atmosphere for running",
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
  comment: "Even in the rain, I had a lot of fun cycling in the mountains",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I am thinking of trying again as I was not entirely satisfied with this activity",
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
