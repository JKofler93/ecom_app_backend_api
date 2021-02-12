# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Order.destroy_all
ItemOrder.destroy_all
Item.destroy_all
Review.destroy_all

# Users
conor = User.create(email: "conor@email.com", password_digest: "123456")
joe = User.create(email: "joe@email.com", password_digest: "123456")

# Item
item1 = Item.create(name: "Blue Sweatshirt", category: "Comfy", price: 18.00, brand: "Gap", image: "https://prd-static-default-1.sf-cdn.com/renderer/v1/ferenderer?dsp=https://swiftbuckets-akmi.sf-cdn.com/v1/cmg/cell955/cdm/9608c75a31584e839297c655607e545f/3&sku=CommerceProduct_10206&st=front&vt=left&cx=/hp/sf/sf-us/snapfish-us&pt=1612244120286&wd=640", size: "Large")
item2 = Item.create(name: "Michael Scott Poster", category: "Poster", price: 10.00, brand: "The Office", image: "https://images-na.ssl-images-amazon.com/images/I/61JcAp-%2BilL._AC_SL1500_.jpg", size: "Large")
item3 = Item.create(name: "Soundcore Life Q20", category: "Headphones", price: 49.99, brand: "Anker", image: "https://images-na.ssl-images-amazon.com/images/I/61oXrwTm1uL._AC_SL1500_.jpg", size: "Large")
item4 = Item.create(name: "Not Even Slinky Nickel Wound Set, .012 - .056", category: "Guitar", price: 5.99, brand: "Ernie Ball", image: "https://images-na.ssl-images-amazon.com/images/I/713ouweE6UL._AC_SL1000_.jpg", size: "Large")

# Order
order1 = Order.create(user_id: conor.id, date: 2021-02-03, checked_out: false)
order2 = Order.create(user_id: joe.id, date: 2021-02-03, checked_out: false)

# Review
review1 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: conor.id, item_id: item1.id)
review2 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: conor.id, item_id: item2.id)
review3 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: joe.id, item_id: item3.id)
review4 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: joe.id, item_id: item4.id)

# ItemOrder
item_order1 = ItemOrder.create(order_id: order1.id , item_id: item1.id)
item_order2 = ItemOrder.create(order_id: order2.id, item_id: item2.id)