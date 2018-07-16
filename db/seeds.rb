# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
password = "password"

Car.destroy_all
User.destroy_all

puts "creating customers"

felipe = User.new(
  name: "felipe",
  email: "Faker@Name.email",
  password: password)
felipe.save!

santiago = User.new(
  name: "santiago",
  email: "Santiago@Name.email",
  password: password)
santiago.save!

honda = Car.create(
  user_id: felipe.id,
    maker: "honda",
    model: "accord",
    year: "2009",
    plate: "HXG 203"
  )
honda.save!

mazda = Car.create(
  user_id: santiago.id,
    maker: "mazda",
    model: "3",
    year: "2002",
    plate: "UVG 203"
  )
mazda.save!

audi = Car.create(
  user_id: santiago.id,
    maker: "audi",
    model: "accord",
    year: "1990",
    plate: "RXG 133"
  )
audi.save!
