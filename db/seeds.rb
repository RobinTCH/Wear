# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(admin: true, username: "Titi", email: "romain@gmail.com")
user2 = User.new(admin: true, username: "Tevy Boss", email: "tevy@gmail.com")
user3 = User.new(admin: false, username: "Kanak", email: "kanakthedog@gmail.com")

brand1 = Brand.new(name: "Uniqlo", description: "A famous Japanese brand")
brand2 = Brand.new(name: "Nike", description: "A famous child-labor-user American brand")

product1 = Product.new(name)

feedback1 = Feedback.new()
