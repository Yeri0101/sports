require "faker"

User.destroy_all
Activity.destroy_all
Review.destroy_all

1.times do
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
end

1.times do
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
end

1.times do
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
end

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

6.times do
  Activity.create!(
    address: Faker::Address.full_address,
    category: "Football",
    description: Faker::Lorem.sentence(word_count: 10, supplemental: false),
    end_date: Faker::Date.in_date_period(year: 2022, month: 11),
    name: Faker::Lorem.sentence(word_count: 2, supplemental: false),
    start_date: Faker::Date.between(from: "2021-11-29", to: "2022-11-29"),
    user: User.all.sample
  )
end

12.times do
  Review.create!(
    activity: Activity.all.sample,
    comment: Faker::Lorem.sentence(word_count: 10, supplemental: false),
    user: User.all.sample
  )
end
