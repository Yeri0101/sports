# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    description: Faker::Lorem.sentence(word_count: 10, supplemental: false),
    end_date: Faker::Date.in_date_period(year: 2022, month: 11),
    name: Faker::Lorem.sentence(word_count: 2, supplemental: false),
    postcode: Faker::Address.postcode,
    start_date: Faker::Date.between(from: "2021-11-29", to: "2022-11-29"),
    state: Faker::Address.state,
    user: User.all.sample
  )
end

12.times do
  Review.create!(
    activity: Activity.all.sample,
    comment: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 5),
    user: User.all.sample
  )
end
