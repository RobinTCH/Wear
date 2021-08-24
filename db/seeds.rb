# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'creating users'
user1 = User.create!(admin: true, username: "Titi", email: "romain@gmail.com", password: "1234567")
user2 = User.create!(admin: true, username: "Tevy Boss", email: "tevy@gmail.com", password: "1234567")
user3 = User.create!(admin: false, username: "Kanak", email: "kanakthedog@gmail.com", password: "1234567")
puts "#{User.count} ont été créé"


puts 'creating brands'
brand1 = Brand.create!(name: "Uniqlo", description: "A famous Japanese brand")
brand2 = Brand.create!(name: "Nike", description: "A famous child-labor-user American brand")
puts "#{Brand.count} ont été créé"

puts 'creating products'
product1 = Product.create!(brand_id: brand1.id, name: "Chaussons blancs", description: "des chaussons thermocollés",
                           environment: 40, labor: 35, animal: 100, composition: 40)
product2 = Product.create!(brand_id: brand2.id, name: "Air force one", description: "faits avec le sang des enfants",
                           environment: 20, labor: 0, animal: 100, composition: 10)
puts "#{Product.count} ont été créé"

puts 'creating feedback'
feedback1 = Feedback.create!(user_id: user3.id, product_id: product2.id, average_durability: 24, comment: 'merci les enfants !')
puts "#{Feedback.count} ont été créé"
