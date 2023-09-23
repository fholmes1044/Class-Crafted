User.create(username: "teacher1", first_name: "Faith", last_name: "Holmes", password: "password", password_confirmation: "password", email: "Faith@gmail.com", profile_picture:"https://i.imgur.com/Tf1yO5Eb.jpg", user_type: "buyer", age: 28)
User.create(username: "joe.banks", first_name: "Joe", last_name: "Banks", password: "newpassword", password_confirmation: "newpassword", email: "Joe@gmail.com", profile_picture:"https://i.imgur.com/cTQV24B.png", user_type: "seller", age:27)

Product.create(user_id:1, title:"Dryerase Whiteboard", image:"https://i.imgur.com/RmUdOdd.png", description: "Perfect for leading small groups", cost:100, category:"class supplies", location:"Maryland", inventory: 3)
Product.create(user_id:2, title:"How To Teach Music Lessons", image:"https://i.imgur.com/Sh0Ni6X.png", description: "Tips on how to master teaching music to young students", cost:30, category:"self-paced lessons", location:"virtual", inventory: 100)

Review.create(user_id:1, product_id:2, summary: "Great stuff", rating:5, date: "2023-09-22")
Review.create(user_id:2, product_id:1, summary: "Perfect condition", rating:5, date: "2023-09-22")

Order.create(user_id:1)
Order.create(user_id:2)
Order.create(user_id:1)

OrderItem.create(order_id:1, product_id:1, quantity:1)
OrderItem.create(order_id:2, product_id:2, quantity:1)
OrderItem.create(order_id:3, product_id:2, quantity:1)