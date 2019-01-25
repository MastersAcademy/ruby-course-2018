# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |number|
  Seller.create(name: "seller #{number}", email: "seller#{number}@example.com")
  Category.create(categories: "category#{number}")
  User.create(email: "#{number}@mail.com",
              first_name: "User#{number}",
              last_name: "lsname#{number}",
              password_digest: 'weweewew111')
  Book.create(title: "Book#{number}",
              author: "Author #{number}",
              description: 'very interesting book',
              price: 150, user_id: User.last.id,
              category_id: Category.last.id,
              seller_id: Seller.last.id)
end