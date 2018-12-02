require './config/initializers/database'
require 'pry'


Profession.create(doctor:     true)
Profession.create(dishwasher: true)
Profession.create(lawyer:     true)

Nationality.create(russian:     true)
Nationality.create(ukrainian:   true)
Nationality.create(american:    true)

User.create(first_name: 'Vlad',   last_name: 'Vovk',   profession_id: 1, nationality_id: 3)
User.create(first_name: 'Igor',   last_name: 'Kubrak', profession_id: 2, nationality_id: 2)
User.create(first_name: 'Alex',   last_name: 'Boyko',  profession_id: 3, nationality_id: 1)
User.create(first_name: 'Sandra', last_name: 'Heetz',  profession_id: 1, nationality_id: 3)
User.create(first_name: 'Nata',   last_name: 'Terbko', profession_id: 2, nationality_id: 2)
User.create(first_name: 'Max',    last_name: 'Power',  profession_id: 3, nationality_id: 1)

puts 'These people are doctors'
User.where(profession_id: 1).each do |user|
  puts "First name: #{user.first_name}, Last name: #{user.last_name}"
end

puts 'These people are Ukrainians'
User.where(nationality_id: 2).each do |user|
  puts "First name: #{user.first_name}, Last name: #{user.last_name}"
end
