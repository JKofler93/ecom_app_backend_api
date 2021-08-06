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
# Review.destroy_all

# Users
# conor = User.create(email: "conor@email.com", password: "123456")
joe = User.create(email: "joe@email.com", password: "123456")

# # Item

# Moniters
item1 = Item.create(name: "ASUS Monitor 4K/UHD", category: "Monitors", cost: 249.99, brand: "ASUS", image: "https://m.media-amazon.com/images/I/91ttSUjDUzL._AC_SL1500_.jpg", description: "28 inches 4K/UHD with 1ms response time and Adaptive Sync/AMD Free Sync for immersive, crisp visuals featuring Display Port and dual HDMI connectivity.")
item2 = Item.create(name: "LG Ultragear QHD", category: "Monitors", cost: 396.99, brand: "LG", image: "https://m.media-amazon.com/images/I/81ZYbkU1uKL._AC_SL1500_.jpg", description: "27 inches QHD Nano IPS display. NVidia G SYNC compatible. 144 Hertz refresh rate.")
item3 = Item.create(name: "SAMSUNG Odyaaey G5 Series", category: "Monitors", cost: 349.99, brand: "SAMSUNG", image: "https://m.media-amazon.com/images/I/61Lb5JbFxML._AC_SL1000_.jpg", description: "Packing in 1.7 times the pixel density of Full HD, WQHD resolution boasts incredibly detailed, pin-sharp images")
item4 = Item.create(name: "ASUS TUF", category: "Monitors", cost: 359.99, brand: "ASUS", image: "https://m.media-amazon.com/images/I/81-53iRCjcL._AC_SL1500_.jpg", description: "27 inch WQHD IPS gaming monitor with 1ms response time 165Hz refresh rate and G-SYNC compatibility for a tear-free experience")
item5 = Item.create(name: "Dell S2721HS", category: "Monitors", cost: 209.99, brand: "Dell", image: "https://m.media-amazon.com/images/I/81vf4znYbaL._AC_SL1500_.jpg", description: "Get virtually seamless views with consistent colors across a wide 178°/178° viewing angle with In-Plane Switching (IPS) technology")


# Phones 
item7 = Item.create(name: "Google Pixel 4a", category: "Phones", cost: 349.99, brand: "Google", image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQxJMANr5HdV1ZcUA5qh0DHx4aZ0PkYXZtJsj2a6x4CIn1FCG_rNH0_s_rhGk_O-MYxZC60XxGrRgFCO9GborXvJZ-J8uq0nQ&usqp=CAY", description: "Full-screen 5.81-inch/147.6 mm display with transmissive hole Memory: 6 GB RAM Storage: 128 GB Processors: Qualcomm Snapdragon 7302 , Titan M Rear camera: 12.2 MP")
item8 = Item.create(name: "Apple iPhone 12", category: "Phones", cost: 829.99, brand: "Apple", image: "https://m.media-amazon.com/images/I/71cQWYVtcBL._FMwebp__.jpg", description: "A14 Bionic chip, the fastest chip ever in a smartphone. Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording")
item10 = Item.create(name: "Apple iPhone 12 Pro Max", category: "Phones", cost: 1299.95, brand: "Apple", image: "https://m.media-amazon.com/images/I/71gquzn6vIL._FMwebp__.jpg", description: "A14 Bionic chip, the fastest chip ever in a smartphone. LiDAR Scanner for improved AR experiences, Night mode portraits")
item9 = Item.create(name: "Apple iPhone X", category: "Phones", cost: 899.99, brand: "Apple", image: "https://m.media-amazon.com/images/I/618ZI2Xyw+L._AC_SL1500_.jpg", description: "5.8-inch Super Retina display (OLED) with HDR. 12MP dual cameras with dual OIS and 7MP TrueDepth front camera—Portrait mode and Portrait Lighting")
item11 = Item.create(name: "SAMSUNG Galaxy S21 Ultra", category: "Phones", cost: 999.99, brand: "SAMSUNG", image: "https://m.media-amazon.com/images/I/61bLefD79-L._AC_SL1020_.jpg", description: "Intuitively manages your cellphone’s usage, so you can go all day without chargin. Experience next-generation connectivity for everything you love to do: more sharing, more gaming, more experiences.")
item12 = Item.create(name: "SAMSUNG Galaxy S20", category: "Phones", cost: 549.99, brand: "SAMSUNG", image: "https://m.media-amazon.com/images/I/81Yz+3Qqq5L._AC_SL1500_.jpg", description: "Get next-level power with Samsung Galaxy 5G; More sharing, more gaming, and more experiences and never miss a beat. One tap of the screen captures multiple images and video all at once; Lenses, effects and filters capture the best of every moment, every time.")


# Laptops
item13 = Item.create(name: "Apple MacBook Pro", category: "Laptops", cost: 1099.99, brand: "Apple", image: "https://m.media-amazon.com/images/I/71an9eiBxpL._AC_SL1500_.jpg", description: "Apple-designed M1 chip for a giant leap in CPU, GPU, and machine learning performance. Get more done with up to 20 hours of battery life, the longest ever in a Mac")
item14 = Item.create(name: "Apple MacBook Air", category: "Laptops", cost: 899.95, brand: "Apple", image: "https://m.media-amazon.com/images/I/71TPda7cwUL._AC_SL1500_.jpg", description: "Apple-designed M1 chip for a giant leap in CPU, GPU, and machine learning performance. Go longer than ever with up to 18 hours of battery life")
item15 = Item.create(name: "ASUS VivoBook", category: "Laptops", cost: 639.99, brand: "ASUS", image: "https://m.media-amazon.com/images/I/71i6KP0h7BS._AC_SL1500_.jpg", description: "10th Gen Intel Core i5-1035G1 Processor @ 1.00GHz (4 Cores, 6M Cache, up to 3.60 GHz) Display: 15.6inch FHD (1920 x 1080) NanoEdge Touchscreen Display; Graphics: Intel UHD Graphics. 720p HD webcam")
item16 = Item.create(name: "ASUS TUF F17", category: "Laptops", cost: 849.99, brand: "ASUS", image: "https://m.media-amazon.com/images/I/91P7uBC9DML._AC_SL1500_.jpg", description: "NVIDIA GeForce GTX 1650 Ti 4GB GDDR6 Graphics up to 1585MHz at 80W TGP. Quad-core Intel Core 15-10300H Processor (8M Cache, up to 4.5 GHz, 4 cores)Quad-core Intel Core 15-10300H Processor (8M Cache, up to 4.5 GHz, 4 cores)")
item17 = Item.create(name: "Lenovo Flex", category: "Laptops", cost: 594.99, brand: "Lenovo", image: "https://m.media-amazon.com/images/I/81AbJXWCxXL._AC_SL1500_.jpg", description: "This 2-in-1 laptop weighs just 3.64 pounds and is only 0.82 inch thick. It's soft and comfortable to the touch, with a durable paint that creates a better user experience. Digital pen included")
item18 = Item.create(name: "Lenovo IdeaPad 3", category: "Laptops", cost: 595.96, brand: "Lenovo", image: "https://m.media-amazon.com/images/I/61DrCbSkM4L._AC_SL1500_.jpg", description: "10th generation Intel Core i5-1035G1 processor. Dual-core, four-way intelligent processing performance. 15.6-inch touchscreen for convenient control. ")


# # Order

# Order.create(user: joe, paid: true)
# Order.create(user: joe, paid: false)
# Order.create(user: joe, paid: true)
# order1 = Order.create(user_id: conor.id, date: 2021-02-03, checked_out: false)
# order2 = Order.create(user_id: joe.id, date: 2021-02-03, checked_out: true)
# order3 = Order.create(user_id: conor.id, date: 2021-02-03, checked_out: true)
# # Review
# review1 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: conor.id, item_id: item1.id)
# review2 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: conor.id, item_id: item2.id)
# review3 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: joe.id, item_id: item3.id)
# review4 = Review.create(comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: joe.id, item_id: item4.id)

# # ItemOrder
# ItemOrder.create(order_id: 1, item_id: 1)
# ItemOrder.create(order_id: 2, item_id: 2)
# ItemOrder.create(order_id: 2, item_id: 3)
# ItemOrder.create(order_id: 3, item_id: 4)
# ItemOrder.create(order_id: 3, item_id: 5)
# ItemOrder.create(order_id: 3, item_id: 6)
# item_order1 = ItemOrder.create(order_id: order1.id , item_id: item1.id)
# item_order2 = ItemOrder.create(order_id: order2.id, item_id: item2.id)
# item_order3 = ItemOrder.create(order_id: order1.id, item_id: item15.id)
# item_order4 = ItemOrder.create(order_id: order1.id, item_id: item16.id)
# item_order5 = ItemOrder.create(order_id: order1.id, item_id: item17.id)
# item_order6 = ItemOrder.create(order_id: order2.id, item_id: item15.id)
# item_order7 = ItemOrder.create(order_id: order2.id, item_id: item12.id)
# item_order8 = ItemOrder.create(order_id: order3.id, item_id: item15.id)