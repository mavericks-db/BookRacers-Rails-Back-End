# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Seed started"

p "Creating users"
User.create(name: 'Admin_User', admin: true)
User.create(name: 'New_User', admin: false)

p "Creating categories"
Category.create(catname: 'Sport')

p "Creating motorcycles"
Motorcycle.create(articleID: 973642, brand: 'Acabion', model: 'GTBO 600 Daytona-VI', category_id: 1, year: '2011', image: 'http://api-motorcycle.makingdatameaningful.com/files/Acabion/2011/GTBO%20600%20Daytona-VI/Acabion_2011_GTBO%20600%20Daytona-VI.jpeg', rental_price: 100)

p "Creating reservations"
Reservation.create(motorcycle_id: 1, user_id: 1, total_price: 100)

p "------------------"

p "Created #{User.count} users"
p "Created #{Category.count} categories"
p "Created #{Motorcycle.count} motorcycles"
p "Created #{Reservation.count} reservations"
p "Seed finished"
