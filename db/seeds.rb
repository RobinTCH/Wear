# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'creating users'
user1 = User.create!(admin: true, username: "Titi", email: "romain@gmail.com", password: "1234567", avatar: "https://avatars.githubusercontent.com/u/85564151?v=4")
user2 = User.create!(admin: true, username: "Tevy Boss", email: "tevy@gmail.com", password: "1234567", avatar: "https://avatars.githubusercontent.com/u/57491431?v=4")
user3 = User.create!(admin: false, username: "Kanak", email: "kanakthedog@gmail.com", password: "1234567", avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9fckK4xM1XHLeEtA88hmlQx06tsFROeDEAw&usqp=CAU")
user4 = User.create!(admin: true, username: 'Robin', email: 'robin@gmail.com', password: '1234567', avatar: "https://avatars.githubusercontent.com/u/78359136?v=4")
user5 = User.create!(admin: true, username: 'Cassandre', email: 'cassandre@gmail.com', password: '1234567', avatar: "https://avatars.githubusercontent.com/u/58876140?v=4")
puts "#{User.count} ont été créé(es)"

Brand.destroy_all
puts 'creating brands'
brand1 = Brand.create!(name: "Angarde", description: "Angarde revisit the timelessness of footwear to give them more meaning.")
brand2 = Brand.create!(name: "Thinking Mu", description: "Thinking MU is a sustainable clothing project.")
brand3 = Brand.create!(name: "Brava Fabrics", description: "Modern, conscious, fair: Brava Fabrics believe in a sustainable future.")
brand4 = Brand.create!(name: "Le Petit Faon", description: "Solidarit clothing made of natural or recycled fibres.")
puts "#{Brand.count} ont été créé(es)"

Product.destroy_all
puts 'creating products'
product1 = Product.create!(brand_id: brand1.id, name: "After-surf cactus", category: "Sneakers", gender: "Woman", description: "An ultra-comfortable trainer, made of recycled materials and handmade in Portugal",
                           environment: 40, labor: 35, animal: 100, composition: 40)
file1 = URI.open('https://d2hnh3d6vfy9oz.cloudfront.net/bvowRbFSsyMVy40xwWY6PZmaT5KRDrzSEQppplzMgKE/w:600/czM6Ly93ZWRyZXNz/ZmFpci1wcm9kdWN0/aW9uLzZlcG5qZmNl/MXZzYjlkdW9vbW8w/eXBueXhhM2g')
product1.picture.attach(io: file1, filename: "product1.jpg", content_type: "image/jpg")

product2 = Product.create!(brand_id: brand2.id, name: "Love T-Shirt", category: "T-shirt", gender: "Woman", description: "White printed T-shirt in organic cotton - love",
                           environment: 80, labor: 0, animal: 100, composition: 10)
file2 = URI.open('https://d2hnh3d6vfy9oz.cloudfront.net/5bXVyi21TS0R9rrdWTnhHt1Zpm1cY897bD2gxx80YTY/w:600/czM6Ly93ZWRyZXNz/ZmFpci1wcm9kdWN0/aW9uL2doNzh5djkx/aGtycWVsb3o4Zmsw/bHZzNjFhOWs')
product2.picture.attach(io: file2, filename: "product2.jpg", content_type: "image/jpg")

product3 = Product.create!(brand_id: brand2.id, name: "Turkana Top", category: "T-shirt", gender: "Woman", description: "White T-shirt in organic cotton",
                           environment: 80, labor: 0, animal: 100, composition: 10)
file3 = URI.open('https://thinkingmu.com/17399-large_default/top-trash-turkana-blanco.jpg')
product3.picture.attach(io: file3, filename: "product3.jpg", content_type: "image/jpg")

product4 = Product.create!(brand_id: brand3.id, name: "Flannel Shirt", category: "Shirt", gender: "Man", description: "Blue grey organic cotton flannel shirt",
                           environment: 80, labor: 0, animal: 100, composition: 20)
file4 = URI.open('https://d2hnh3d6vfy9oz.cloudfront.net/78st-kxudnjZdq1WZNH9xEzq-ey9F3y_3UhML4B4unM/w:1000/czM6Ly93ZWRyZXNz/ZmFpci1wcm9kdWN0/aW9uL3M3dnZ6Y3Rq/aGgwamtpYWNzMXJt/Y3MyMDdnb2c')
product4.picture.attach(io: file4, filename: "product4.jpg", content_type: "image/jpg")

product5 = Product.create!(brand_id: brand3.id, name: "Willys Adventure", category: "Shirt", gender: "Man", description: "Printed shirt regular fit hand-crafted.",
                           environment: 80, labor: 0, animal: 100, composition: 20)
file5 = URI.open('https://cdn.shopify.com/s/files/1/0043/0804/1831/products/77_image_4_5_front_b1b7246b-4cb1-4628-9d0d-b7b731d0824d_2000x2500_crop_center.jpg?v=1627985879')
product5.picture.attach(io: file5, filename: "product5.jpg", content_type: "image/jpg")

product6 = Product.create!(brand_id: brand4.id, name: "Sunset Vibes", category: "T-Shirt", gender: "Woman", description: "Women's Sunset T-shirt in organic cotton.",
                           environment: 70, labor: 40, animal: 100, composition: 60)
file6 = URI.open('https://cdn.shopify.com/s/files/1/0099/2575/4980/products/TSHIRT_SUNSET_COTON_BIO_2048x.jpg?v=1613231056')
product6.picture.attach(io: file6, filename: "product6.jpg", content_type: "image/jpg")

product7 = Product.create!(brand_id: brand4.id, name: "Sweat-shirt Tom", category: "Sweat-shirt", gender: "Man", description: "Men's Sweat-Shirt in organic cotton and recycled polyester.",
                           environment: 60, labor: 60, animal: 90, composition: 70)
file7 = URI.open('https://cdn.shopify.com/s/files/1/0099/2575/4980/products/SWEAT_TOM_BLEU_MARINE_900x.jpg?v=1613231063')
product7.picture.attach(io: file7, filename: "product7.jpg", content_type: "image/jpg")

product8 = Product.create!(brand_id: brand2.id, name: "Save The Human T-Shirt", category: "T-shirt", gender: "Man", description: "Men's sleeve T-shirt in organic cotton - Collaboration with protest press.",
                           environment: 70, labor: 70, animal: 60, composition: 65)
file8 = URI.open('https://thinkingmu.com/17124-large_default/camiseta-save-the-humans.jpg')
product8.picture.attach(io: file8, filename: "product8.jpg", content_type: "image/jpg")

product9 = Product.create!(brand_id: brand2.id, name: "Moero Pants", category: "Pants", gender: "Man", description: "Men's loose fit pants with pockets - natural buttons.",
                           environment: 60, labor: 60, animal: 90, composition: 70)
file9 = URI.open('https://thinkingmu.com/17178-large_default/pantalon-moero-hemp-verde.jpg')
product9.picture.attach(io: file9, filename: "product9.jpg", content_type: "image/jpg")

product10 = Product.create!(brand_id: brand2.id, name: "Navy Travel Pants", category: "Pants", gender: "Man", description: "Men's Sweat-Shirt in organic cotton and recycled polyester.",
                            environment: 70, labor: 65, animal: 90, composition: 80)
file10 = URI.open('https://thinkingmu.com/17176-large_default/pantalon-navy.jpg')
product10.picture.attach(io: file10, filename: "product10.jpg", content_type: "image/jpg")

product11 = Product.create!(brand_id: brand2.id, name: "Henry Shorts", category: "Short", gender: "Man", description: "Loose fit short with elastic waistbrand.",
                            environment: 75, labor: 70, animal: 85, composition: 70)
file11 = URI.open('https://thinkingmu.com/17182-large_default/short-henry-verde.jpg')
product11.picture.attach(io: file11, filename: "product11.jpg", content_type: "image/jpg")
puts "#{Product.count} ont été créé(es)"

Feedback.destroy_all
puts 'creating feedback'
feedback1 = Feedback.create!(user_id: user3.id, product_id: product2.id, average_durability: 24, comment: 'merci les enfants!')
puts "#{Feedback.count} ont été créé(es)"
