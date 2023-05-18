require "faker"

User.destroy_all
Activity.destroy_all
Review.destroy_all
Booking.destroy_all
Message.destroy_all

7.times do
  User.create!(
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    country_code: Faker::PhoneNumber.country_code,
    email: Faker::Internet.email(domain: "sports.osc-fr1.scalingo.io"),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password:
      Faker::Internet.password(
        min_length: 12,
        max_length: 22,
        mix_case: true,
        special_characters: true
      ),
    phone_number: Faker::PhoneNumber.phone_number,
    postcode: Faker::Address.postcode,
    state: Faker::Address.state,
    username: Faker::Internet.username(separators: %w[. _ -])
  )
end

User.create!(
  address: "Rue Louis-de-Savoie 43",
  city: "Morges",
  country: "Switzerland",
  country_code: "+41",
  email: "maximilien.lanz@lewagon.com",
  first_name: "Maximilien",
  last_name: "LANZ",
  # password:
    # Faker::Internet.password(
      # min_length: 12,
      # max_length: 22,
      # mix_case: true,
      # special_characters: true
    # ),
  password: "2G[>NWivD8YZ5<S@#(d^tA",
  phone_number: "76 373 33 77",
  postcode: "1110",
  state: "Canton de Vaud",
  username: "maximilien.lanz"
)

Activity.create!(
  address: "Manessestrasse 1, 8003 Zürich, Switzerland",
  category: "Running",
  description:
    "Does waking up early in the morning scare you? If so, you may well miss out on a run with breathtaking views as soon as the sun rises.",
  end_date: "2022-12-09 06:45:00 UTC",
  name: "Running",
  start_date: "2022-12-09 05:45:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Rosslimatte 41, 6005 Luzern, Switzerland",
  category: "Yoga",
  description:
    "Let me point out that you seem to be extremely tired. I can help you to remedy this by inviting you to come on a spiritual journey with yourself.",
  end_date: "2022-12-10 18:15:00 UTC",
  name: "Yoga",
  start_date: "2022-12-10 17:15:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Brügglifeld 7, 5000 Aarau, Switzerland",
  category: "Football",
  description:
    "We are currently in the middle of the FIFA World Cup in Qatar. I invite you to join me in building a soccer team that will become the best ever.",
  end_date: "2022-12-25 11:00:00 UTC",
  name: "Football",
  start_date: "2022-12-25 10:00:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Dorfstrasse 187, 3818 Grindelwald, Switzerland",
  category: "Snowboard",
  description:
    "If you are a person who is attracted by extreme sensations, I invite you to join me, up there on the mountain, to come down the snowy slopes.",
  end_date: "2023-01-15 17:30:00 UTC",
  name: "Snowboard",
  start_date: "2023-01-15 08:30:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Höheweg 133, 3800 Interlaken, Switzerland",
  category: "Bicycle",
  description:
    "I would like to be able to show you the idyllic place where I live, through the dense, green forests that surround it, by means of a bicycle ride.",
  end_date: "2023-02-05 17:45:00 UTC",
  name: "Bicycle",
  start_date: "2023-02-05 16:45:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Viale Castagnola 10, 6906 Lugano, Switzerland",
  category: "Tennis",
  description:
    "I prefer to be completely honest with you. If you think you have the level of play to beat me on the court, I look forward to seeing you.",
  end_date: "2023-07-30 20:30:00 UTC",
  name: "Tennis",
  start_date: "2023-07-30 19:30:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Schwellenmattstrasse 1, 3005 Bern, Switzerland",
  category: "Basketball",
  description:
    "You know, it does not matter how big you are, it does not matter how good you are, with me everyone is welcome to play on the field.",
  end_date: "2024-09-05 08:45:00 UTC",
  name: "Basketball",
  start_date: "2023-09-05 07:45:00 UTC",
  user: User.all.sample
)

Activity.create!(
  address: "Risetensträssli 22, 3715 Adelboden, Switzerland",
  category: "Swimming",
  description:
    "You may have dreamed one day of being able to swim across an entire ocean, but that day will never come. I can always try to help you.",
  end_date: "2024-03-17 15:30:00 UTC",
  name: "Swimming",
  start_date: "2023-03-17 14:30:00 UTC",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A beautiful place to practice in peace",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I strongly recommend that you participate",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "An activity that did not meet my expectations",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A host who was very welcoming and motivated",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I had to think twice about it",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A welcoming and easily accessible place",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I found myself alone at the meeting place",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "A difficulty that was far too high for me",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I will hurry to book another similar activity",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I had a great time despite the rain",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I am still thinking of trying again",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I am here to start a sporting activity",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I do not recommend this disastrous host",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Ideal weather for the current season",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "Do not book this activity if you still can",
  user: User.all.sample
)

Review.create!(
  activity: Activity.all.sample,
  comment: "I do not recommend training with this host",
  user: User.all.sample
)

16.times do
  Booking.create!(activity: Activity.all.sample, user: User.all.sample)
end

32.times do
  Message.create!(
    chatroom: Chatroom.all.sample,
    content: Faker::GreekPhilosophers.quote,
    user: User.all.sample
  )
end
