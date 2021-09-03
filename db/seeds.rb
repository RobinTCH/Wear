# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
require 'open-uri'

User.destroy_all
puts 'creating users'
user1 = User.create!(admin: true, username: "Titi", email: "romain@gmail.com", password: "1234567")
file1 = URI.open('https://avatars.githubusercontent.com/u/85564151?v=4')
user1.avatar.attach(io: file1, filename: "user1.jpg", content_type: "image/jpg")

user2 = User.create!(admin: true, username: "Mattéo", email: "matteo@gmail.com", password: "1234567")
file2 = URI.open('https://avatars.githubusercontent.com/u/74420667?v=4')
user2.avatar.attach(io: file2, filename: "user2.jpg", content_type: "image/jpg")

user3 = User.create!(admin: false, username: "Baptiste", email: "baptiste@gmail.com", password: "1234567")
file3 = URI.open('https://avatars.githubusercontent.com/u/71074275?v=4')
user3.avatar.attach(io: file3, filename: "user3.jpg", content_type: "image/jpg")

user4 = User.create!(admin: true, username: 'Robin', email: 'robin@gmail.com', password: '1234567')
file4 = URI.open('https://avatars.githubusercontent.com/u/78359136?v=4')
user4.avatar.attach(io: file4, filename: "user4.jpg", content_type: "image/jpg")

user5 = User.create!(admin: true, username: 'Cassandre', email: 'cassandre@gmail.com', password: '1234567')
file5 = URI.open('https://avatars.githubusercontent.com/u/58876140?v=4')
user5.avatar.attach(io: file5, filename: "user5.jpg", content_type: "image/jpg")
puts "#{User.count} users ont été créé(es)"

Brand.destroy_all
puts 'creating brands'
brand1 = Brand.create!(name: "Angarde", description: "Angarde revisit the timelessness of footwear to give them more meaning.", address: "69 Rue d'Aboukir, 75002 Paris")
brand2 = Brand.create!(name: "Thinking Mu", description: "Thinking MU is a sustainable clothing project.", address: "42 rue du chemin, 75011 Paris")
brand3 = Brand.create!(name: "Brava Fabrics", description: "Modern, conscious, fair: Brava Fabrics believe in a sustainable future.", address: "24 Rue de Sèvres, 75007 Paris")
brand4 = Brand.create!(name: "Le Petit Faon", description: "Solidarit clothing made of natural or recycled fibres.", address: "51-53 Rue Sainte-Catherine, 33000 Bordeaux")
brand5 = Brand.create!(name: "Veja", description: "Since 2005, VEJA has been producing trainers differently with a positive impact at every stage of production.", address: "87 Quai des Queyries, 33100 Bordeaux")
brand6 = Brand.create!(name: "Patagonia", description: "Patagonia makes high-performance, durable outdoor clothing and equipment.", address: "48 Bd Haussmann, 75009 Paris")
brand7 = Brand.create!(name: "Armedangels", description: "Armedangels thinks organic. Armedangels believes fairness is never out of fashion.", address: "15 rue Chauchat, 33100 Bordeaux")
brand8 = Brand.create!(name: "D.Franklin®", description: "Urban brand combining current trends with the details of its materials.", address: "2 Rue de la Ferronnerie, 75001 Paris")

puts "#{Brand.count} brands ont été créé(es)"

Product.destroy_all
puts 'creating products'
product1 = Product.create!(brand_id: brand1.id, name: "After-surf cactus", category: "Sneakers", gender: "Woman", description: "An ultra-comfortable trainer, made of recycled materials and handmade in Portugal",
                           environment: 40, labor: 35, animal: 100, composition: 40)
file1 = URI.open('https://d2hnh3d6vfy9oz.cloudfront.net/bvowRbFSsyMVy40xwWY6PZmaT5KRDrzSEQppplzMgKE/w:600/czM6Ly93ZWRyZXNz/ZmFpci1wcm9kdWN0/aW9uLzZlcG5qZmNl/MXZzYjlkdW9vbW8w/eXBueXhhM2g')
product1.picture.attach(io: file1, filename: "product1.jpg", content_type: "image/jpg")

product2 = Product.create!(brand_id: brand2.id, name: "Love T-Shirt", category: "T-Shirt", gender: "Woman", description: "White printed T-shirt in organic cotton - love",
                           environment: 80, labor: 0, animal: 100, composition: 10)
file2 = URI.open('https://d2hnh3d6vfy9oz.cloudfront.net/5bXVyi21TS0R9rrdWTnhHt1Zpm1cY897bD2gxx80YTY/w:600/czM6Ly93ZWRyZXNz/ZmFpci1wcm9kdWN0/aW9uL2doNzh5djkx/aGtycWVsb3o4Zmsw/bHZzNjFhOWs')
product2.picture.attach(io: file2, filename: "product2.jpg", content_type: "image/jpg")

product3 = Product.create!(brand_id: brand2.id, name: "Turkana Top", category: "T-Shirt", gender: "Woman", description: "White T-shirt in organic cotton",
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

product8 = Product.create!(brand_id: brand2.id, name: "Save The Human T-Shirt", category: "T-Shirt", gender: "Man", description: "Men's sleeve T-shirt in organic cotton - Collaboration with protest press.",
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

product12 = Product.create!(brand_id: brand1.id, name: "After-Surf Ananas", category: "Sneakers", gender: "Woman", description: "Handmade in Portugal from recycled and upcycled materials.",
                            environment: 75, labor: 70, animal: 85, composition: 70)
file12 = URI.open('https://cdn.shopify.com/s/files/1/1556/4335/products/sneakers-femme-angarde-vegan-after-surf-blue-retouche-ss21-8_x635@2x.jpg?v=1617113666')
product12.picture.attach(io: file12, filename: "product12.jpg", content_type: "image/jpg")

product13 = Product.create!(brand_id: brand1.id, name: "After-Surf Cactus", category: "Sneakers", gender: "Man", description: "Handmade in Portugal.",
                            environment: 85, labor: 75, animal: 70, composition: 65)
file13 = URI.open('https://cdn.shopify.com/s/files/1/1556/4335/products/sneakers-homme-angarde-vegan-cactus-do-brasil-ss21-1-avec-logo_bf729b35-e6f3-4383-89a9-a422e7361284_x635@2x.jpg?v=1621334030')
product13.picture.attach(io: file13, filename: "product13.jpg", content_type: "image/jpg")

product14 = Product.create!(brand_id: brand5.id, name: "Natural Parme", category: "Sneakers", gender: "Woman", description: "The Condor is the 1st post-oil running.",
                            environment: 85, labor: 75, animal: 70, composition: 65)
file14 = URI.open('https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/C/L/CL0102658_2.jpg')
product14.picture.attach(io: file14, filename: "product14.jpg", content_type: "image/jpg")

product15 = Product.create!(brand_id: brand5.id, name: "Esplar Chromefree", category: "Sneakers", gender: "Man", description: "Named after the Brazilian NGO we have been working with since 2005.",
                            environment: 85, labor: 75, animal: 70, composition: 65)
file15 = URI.open('https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/v/e/veja_ea052619_top.jpg')
product15.picture.attach(io: file15, filename: "product15.jpg", content_type: "image/jpg")

product16 = Product.create!(brand_id: brand5.id, name: "Suede Multico", category: "Sneakers", gender: "Woman", description: "The V-10 model is made of a combination of ecological and sustainable materials, symbolising 10 years of love.",
                            environment: 85, labor: 75, animal: 70, composition: 65)
file16 = URI.open('https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/V/X/VX021907_1.jpg')
product16.picture.attach(io: file16, filename: "product16.jpg", content_type: "image/jpg")

product17 = Product.create!(brand_id: brand6.id, name: "Traveler Pants", category: "Pants", gender: "Man", description: "Camel pants in organic cotton twill",
                            environment: 85, labor: 75, animal: 90, composition: 75)
file17 = URI.open('https://d2hnh3d6vfy9oz.cloudfront.net/gqa56l5KHv1pbvVswiwgu1LV0M3MoEcF-mjiakiyl6w/w:1000/czM6Ly93ZWRyZXNz/ZmFpci1wcm9kdWN0/aW9uLzF6aTNpMXoz/Z3NnbmZjcmZneGMw/eDUyOTZ3cDM')
product17.picture.attach(io: file17, filename: "product17.jpg", content_type: "image/jpg")

product18 = Product.create!(brand_id: brand7.id, name: "Jontaa", category: "Pants", gender: "Man", description: "Black darts pants in lenzing",
                            environment: 80, labor: 70, animal: 90, composition: 75)
file18 = URI.open('https://d2hnh3d6vfy9oz.cloudfront.net/JY4fdpg6b8dDiHCJJQ1amO7aTpIeLN28CWC4obgcEuI/w:1000/czM6Ly93ZWRyZXNz/ZmFpci1wcm9kdWN0/aW9uLzJ1emJteDgy/OG9oZ3gydjgwdG9i/cWd5bjB2ajc')
product18.picture.attach(io: file18, filename: "product18.jpg", content_type: "image/jpg")
puts "#{Product.count} products ont été créé(es)"

product19 = Product.create!(brand_id: brand8.id, name: "One Way Multi UV", category: "Sneakers", gender: "Woman", description: "The limited edition One Way is inspired by the most casual of D.Franklin® collections.",
                            environment: 45, labor: 60, animal: 80, composition: 50, barcode: '5000112558265')
file19 = URI.open('https://cdn.shopify.com/s/files/1/0070/2316/5492/products/LVK22011_0371_30_da16e679-e63b-46af-97f2-e9e32982382e_1200x.jpg?v=1616406122')
product19.picture.attach(io: file19, filename: "product19.jpg", content_type: "image/jpg")

product20 = Product.create!(brand_id: brand5.id, name: "Cobalt", category: "Sneakers", gender: "Man", description: "White orange fluo sneakers.",
                            environment: 85, labor: 70, animal: 80, composition: 70)
file20 = URI.open('https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/v/e/veja_cp052195_top_1.jpg')
product20.picture.attach(io: file20, filename: "product20.jpg", content_type: "image/jpg")

product21 = Product.create!(brand_id: brand5.id, name: "Nautico", category: "Sneakers", gender: "Man", description: "Black original sneakers.",
                            environment: 85, labor: 70, animal: 80, composition: 70)
file21 = URI.open('https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/U/C/UC072324_2.jpg')
product21.picture.attach(io: file21, filename: "product21.jpg", content_type: "image/jpg")
puts "#{Product.count} products ont été créé(es)"

product22 = Product.create!(brand_id: brand5.id, name: "Marsala", category: "Sneakers", gender: "Man", description: "Basic sneakers.",
                            environment: 85, labor: 70, animal: 85, composition: 75)
file22 = URI.open('https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/v/e/veja_cp132702_top.jpg')
product22.picture.attach(io: file22, filename: "product22.jpg", content_type: "image/jpg")

product23 = Product.create!(brand_id: brand5.id, name: "Moonrock", category: "Sneakers", gender: "Man", description: "Grafiti Oxford.",
                            environment: 85, labor: 70, animal: 85, composition: 75)
file23 = URI.open('https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/N/T/NT0102371_2.jpg')
product23.picture.attach(io: file23, filename: "product23.jpg", content_type: "image/jpg")
puts "#{Product.count} products ont été créé(es)"
Feedback.destroy_all
puts 'creating feedback'

feedback1 = Feedback.create!(user_id: user4.id, product_id: product15.id, purchase_date: Date.new(2012, 5, 8), comment: 'Very nice shoes, conformable and long lasting. I still wear them today.')
feedback2 = Feedback.create!(user_id: user2.id, product_id: product15.id, purchase_date: Date.new(2020, 8, 12), comment: "'I've been wearing them for 1 year (almost every day) and they still look great.")
feedback3 = Feedback.create!(user_id: user3.id, product_id: product15.id, purchase_date: Date.new(2019, 2, 3), comment: 'Sneaker with fresh and light colours! A quality trainer.')
puts "#{Feedback.count} ont été créé(es)"
