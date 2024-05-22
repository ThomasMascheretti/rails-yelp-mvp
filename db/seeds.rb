# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '0657799678', category: 'chinese'}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '0662799689', category: 'italian'}
bouboulina = {name: "Bouboulina", address: "222 bd jean jaures, Paris", phone_number: '0657799600', category: 'belgian'}
la_gerbouille = {name: "La gerbouille", address: "222 bd des nuls, Marseille", phone_number: '0657799699', category: 'french'}
nazbrok = {name: "Nazbrok", address: "141 rue de Paris, Nice", phone_number: '0657799622', category: 'japanese'}

[dishoom, pizza_east, bouboulina, la_gerbouille, nazbrok].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
