# frozen_string_literal: true

# Helpers for views
module ViewHelpers
  def self.print_movie(movie)
    puts "  #{movie.id}. #{movie.name}"
    description = movie.description
    puts(' ' + description) if description.present?
    puts " Link: #{movie.url}"
    puts " Author: #{movie.author.login}"
    puts " Rating: #{movie.rating}"
    puts
  end

  def self.print_category(category)
    puts "  #{category.id}. #{category.name}"
    puts(' ' + category.description) if category.description.present?
  end
end
