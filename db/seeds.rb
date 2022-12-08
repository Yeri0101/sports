require "faker"

User.destroy_all
Activity.destroy_all
Review.destroy_all

6.times do
  User.create!(
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    country_code: Faker::PhoneNumber.country_code,
    email: Faker::Internet.email(domain: "sports.com"),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password(min_length: 12, max_length: 24),
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    postcode: Faker::Address.postcode,
    state: Faker::Address.state
  )
end

6.times do
  Activity.create!(
    address: Faker::Address.full_address,
    # category: Faker::Number.between(from: 1, to: 10),
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
