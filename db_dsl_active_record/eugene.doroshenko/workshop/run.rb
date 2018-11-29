require 'pry'
require './config/initializers/database'

User.create!(first_name: 'Doctor', last_name: 'Who')
@photorapher = User.last
@photorapher.galleries.create!(gallery_name: 'First gallery')
@photorapher.photos.create!(photo_name: 'First Photo', photo_desc: 'Just a test photo', photo_url: '/first-photo-url1.jpg')

#user name output
puts @photorapher.full_name

#user's galleries output
author_galleries = @photorapher.galleries.map { |gl| gl.gallery_name  }
puts "His galleries are #{author_galleries}"

#user's photos output
author_photos = @photorapher.photos.map { |ph| ph.photo_name }
puts "His photographs are #{ }"

#show author of last photo
puts Photo.last.user.first_name
