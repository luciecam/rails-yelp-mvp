# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pny = { name: "PNY", address: "1 Rue Perrée, 75003 Paris", phone_number: "000", category: "french" }
saam =  { name: "Saam", address: "59 Bis Rue de Lancry, 75010 Paris", phone_number: "09 83 50 84 94", category: "chinese" }
dumbo = { name: "Dumbo", address: "64 Rue Jean-Baptiste Pigalle, 75009 Paris", phone_number: "000", category: "french" }
higuma = { name: "Higuma", address: "32bis Rue Sainte-Anne, 75001 Paris", phone_number: "01 47 03 38 59", category: "japanese" }
gemuse = { name: "Gemuse", address: "61 Rue Ramey, 75018 Paris", phone_number: "000", category: "french" }


[ pny, saam, dumbo, higuma, gemuse ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"