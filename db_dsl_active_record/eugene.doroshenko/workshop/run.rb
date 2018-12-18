require 'pry'
require './config/initializers/database'

User.create!(first_name: 'Doctor', last_name: 'Who')
@photorapher = User.last
@photorapher.galleries.create!(name: 'First gallery')
@photorapher.photos.create!(name: 'First Photo', desc: 'Just a test photo', url: '/first-photo-url12.jpg')

#user name output
puts @photorapher.full_name

#user's galleries output
author_galleries = @photorapher.galleries.map { |gl| gl.name  }
puts "His galleries are #{author_galleries}"

#user's photos output
author_photos = @photorapher.photos.map { |ph| ph.name }
puts "His photographs are #{author_photos}"
