require 'pry'
require './config/initializers/database'

# Create book
Book.create(name: "The Children of Captain Grant", author: "Jules Verne", category: "adventure",year: Date.new(1868,2,3))
mybook = Book.last
puts mybook.name
# Create user
User.create!(first_name: 'Petr', last_name: "Lastochka")
current_user = User.last
puts current_user.full_name

# Create offer and add book and user to it
myoffer = Offer.create(offer_name: mybook.name, price: 1000.00, discount: 0.5, user_id: current_user.id, book_id: mybook.id)
puts "Offer name: "+myoffer.offer_fullname
puts "Price #{myoffer.price} & Discount price is: #{myoffer.discount_price}"

Book.create(name: "Mask", author: "Jules Orak", category: "comedy",year: Date.new(2000,5,8))
newbook = Book.last
myoffer.update(book_id: newbook.id)
