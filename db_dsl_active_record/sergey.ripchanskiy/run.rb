require 'pry'
require './config/initializers/database'

# Create seller
seller = Seller.new
seller.valid? #false

Seller.create(name: 'Amazon')
puts Seller.last

# Create category 'Fantasy'
Category.create(name: 'Fantasy')

# Create book
Book.create(seller_id: 1, category_id: 1)
Book.last

# Show seller books
puts Seller.last.books

# Create user and add book to user
user = User.create(first_name: 'Sergey', last_name: 'Ripchanskiy')
Book.last.update(user_id: user.id)
user.books
