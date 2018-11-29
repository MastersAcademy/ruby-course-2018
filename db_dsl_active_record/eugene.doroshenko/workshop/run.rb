require 'pry'
require './config/initializers/database'


User.create!(first_name: 'Doctor', last_name: 'Who')
@photorapher = User.last
@new_gallery = @photorapher.galleries.create!(gallery_name: 'First gallery')
@last_gallery = Gallery.last
@last_gallery.photos.create!(photo_name: 'First Photo', photo_desc: 'Just a test photo', photo_url: '/first-photo-url1.jpg')
puts @photorapher.full_name
puts "His galleries are #{@photorapher.galleries.map { |gl| gl.gallery_name  } }"
puts "His photographs are #{@photorapher.photos.map { |ph| ph.photo_name } }"