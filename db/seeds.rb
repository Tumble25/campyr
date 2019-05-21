# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Reservation.destroy_all
Campsite.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(first_name: "Henk", last_name: "De Groot", email: "henk@degroot.com", password: "111111", password_confirmation: "111111")
user2 =User.create!(first_name: "Bob", last_name: "Sassenheim", email: "bob@sassy.com", password: "111111", password_confirmation: "111111")
user3 = User.create!(first_name: "Annie", last_name: "van Beusekom", email: "annie@kneus.com", password: "111111", password_confirmation: "111111")
user4 = User.create!(first_name: "Max", last_name: "S.", email: "max@maxxy.com", password: "111111", password_confirmation: "111111")

puts "Creating campsites..."
campsite1 = Campsite.create!(name: "Camping 'De Pample'", description: "Family friendly campsite", address: "2 admiralenweg, hoenderloo", photo: Rails.root.join("app/assets/images/camping.jpg").open, price: "23", user: user2)
campsite2 = Campsite.create!(name: "Camping 'De Wasbeek'", description: "Beautiful campsite and beautiful surroundings.", address: "Wasbeeklaan 5 b, Warmond", photo: Rails.root.join("app/assets/images/camping2.jpg").open, price: "27", user: user2)
campsite3 = Campsite.create!(name: "Camping La Pelouse", description: "Peaceful wooded site on the banks of the Dordogne river", address: "8 bis Rue Jean Jacques Rousseau, 24100 Bergerac, France", photo: Rails.root.join("app/assets/images/camping3.jpg").open, price: "13", user: user2)
Campsite.create!(name: "Camping Pomport Beach ", description: "A 4-star campsite ideally located 10 min. of Bergerac", address: "Route de la Gardonnette, 24240 Bergerac, France", photo: Rails.root.join("app/assets/images/camping4.jpg").open, price: "33", user: user2)
campsite5 =Campsite.create!(name: "AZUR Camping Wertheim", description: "Converted and furnished large wooden barrels or bicycle-lodges.", address: "An den Christwiesen 35, 97877 Wertheim, Germany",photo: Rails.root.join("app/assets/images/camping5.jpg").open, price: "55", user: user3)
Campsite.create!(name: "Camping im Eichenwald", description: "Camping with German quality", address: "Camping 'Im Eichenwald', 57537 Mittelhof, Germany", photo: Rails.root.join("app/assets/images/camping6.jpg").open, price: "37", user: user3)
campsite7 = Campsite.create!(name: "Camping Globo Rojo Barcelona", description: "The nearest first class campsite to Barcelona", address: "Carrer Drassanes de Pla, 46, 08360 Canet de Mar, Barcelona, Spain", photo: Rails.root.join("app/assets/images/camping7.jpg").open, price: "15", user: user4)
Campsite.create!(name: "Camping Costa Bravas", description: "The oldest in Catalonia and Spain", address: "Av. de la Unió, s/n, 17252 Sant Antoni de Calonge, Girona, Spain", photo: Rails.root.join("app/assets/images/camping8.jpg").open, price: "16", user: user4)
Campsite.create!(name: "Camping Cantolagua", description: "Family friendly campsite", address: "Paseo Cantolagua, 1, 31400 Sangüesa, Navarra, Spain", photo: Rails.root.join("app/assets/images/camping1.jpg").open, price: "21", user: user4)

puts "Creating reservations..."
Reservation.create!(user: user1, campsite: campsite1, arrival: "2019-12-24", departure: "2019-12-31", status: "Confirmed", total_price: 168)
Reservation.create!(user: user1, campsite: campsite2, arrival: "2019-11-24", departure: "2019-11-30", status: "Pending", total_price: 189)
Reservation.create!(user: user2, campsite: campsite5, arrival: "2019-12-24", departure: "2019-12-31", status: "Confirmed", total_price: 91)
Reservation.create!(user: user4, campsite: campsite1, arrival: "2019-11-24", departure: "2019-11-30", status: "Pending", total_price: 168)
Reservation.create!(user: user2, campsite: campsite7, arrival: "2019-12-24", departure: "2019-12-31", status: "Declined", total_price: 91)
Reservation.create!(user: user3, campsite: campsite3, arrival: "2019-12-24", departure: "2019-12-31", status: "Declined", total_price: 91)

puts "Finished!"
