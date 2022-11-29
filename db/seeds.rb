# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
Activity.destroy_all

5.times do
  User.create!(
    address: Faker::Address.street_address,
    first_name: Faker::Name.first_name,
    email: Faker::Internet.email(domain: 'sports'),
    height: Faker::Number.number(digits: 3),
    last_name: Faker::Name.last_name,
    level: Faker::Lorem.words(number: 1, supplemental: false),
    password: Faker::Internet.password(min_length: 6, max_length: 22),
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    weight: Faker::Number.number(digits: 3)
  )
end

5.times do
  Activity.create!(
    address: Faker::Address.street_address,
    category: Faker::Number.between(from: 1, to: 10),
    description: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 5),
    end_date: Faker::Date.in_date_period(year: 2022, month: 11),
    start_date: Faker::Date.between(from: '2021-11-29', to: '2022-11-29'),
    user: User.all.sample
  )
end
