# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'creating users'
user1 = User.create!(admin: true, username: "Titi", email: "romain@gmail.com", password: "1234567")
user2 = User.create!(admin: true, username: "Tevy Boss", email: "tevy@gmail.com", password: "1234567")
user3 = User.create!(admin: false, username: "Kanak", email: "kanakthedog@gmail.com", password: "1234567")
user4 = User.create!(admin: true, username: 'Robin', email: 'robin@gmail.com', password: '1234567')
user5 = User.create!(admin: true, username: 'Cassandre', email: 'cassandre@gmail.com', password: '1234567')
puts "#{User.count} ont été créé(es)"

Brand.destroy_all
puts 'creating brands'
brand1 = Brand.create!(name: "Uniqlo", description: "A famous Japanese brand")
brand2 = Brand.create!(name: "Nike", description: "A famous child-labor-user American brand")
puts "#{Brand.count} ont été créé(es)"

Product.destroy_all
puts 'creating products'
product1 = Product.create!(brand_id: brand1.id, name: "White slippers", description: "cemented slippers", picture: "https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/438492/item/goods_02_438492.jpg?width=888&impolicy=quality_60&imformat=chrome",
                           environment: 40, labor: 35, animal: 100, composition: 40)
product2 = Product.create!(brand_id: brand2.id, name: "Air force one", description: "Children have been paid fairly according to local laws", picture: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a42a5d53-2f99-4e78-a081-9d07a2d0774a/chaussure-air-force-1-07-pour-pXTXQ8.png",
                           environment: 20, labor: 0, animal: 100, composition: 10)
product3 = Product.create!(brand_id: brand2.id, name: "Air force two", description: "We paid the children fairly", picture: "https://www.lesitedelasneaker.com/wp-content/images/2020/02/nike-air-force-1-low-sketch-white-black-cw7581-101-pic05.jpg",
                           environment: 20, labor: 0, animal: 100, composition: 20)
puts "#{Product.count} ont été créé(es)"

Feedback.destroy_all
puts 'creating feedback'
feedback1 = Feedback.create!(user_id: user3.id, product_id: product2.id, average_durability: 24, comment: 'merci les enfants !')
puts "#{Feedback.count} ont été créé(es)"
