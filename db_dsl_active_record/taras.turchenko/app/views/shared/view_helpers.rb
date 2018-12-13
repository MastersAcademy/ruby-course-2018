module ViewHelpers
  def print_movie(movie)
    puts "  #{movie.id}. #{movie.name}"
    puts(' ' + movie.description) if movie.description.present?
    puts " Author: #{movie.author.login}"
    puts " Rating: #{movie.rating}"
  end
end