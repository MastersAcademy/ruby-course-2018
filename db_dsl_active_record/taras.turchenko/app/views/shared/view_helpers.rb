# frozen_string_literal: true

module ViewHelpers
  def self.print_movie(movie)
    puts "  #{movie.id}. #{movie.name}"
    puts(' ' + movie.description) if movie.description.present?
    puts " Link: #{movie.url}"
    puts " Author: #{movie.author.login}"
    puts " Rating: #{movie.rating}"
  end

  def self.print_category(category)
    puts "  #{category.id}. #{category.name}"
    puts(' ' + category.description) if category.description.present?
  end
end
