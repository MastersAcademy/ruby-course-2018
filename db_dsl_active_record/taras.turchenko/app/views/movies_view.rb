# frozen_string_literal: true

require 'English'

require_relative './shared/base_view'
require_relative './shared/view_helpers'

# View for movie model
class MoviesView < BaseView
  MENU_OPTIONS = {
    back: 0,
    'show all': 1,
    'get random movie': 2,
    'add new movie': 3
  }.freeze

  attr_accessor :current_user

  def initialize
    super MENU_OPTIONS
  end

  def start
    puts
    selected_menu_option = get_user_selection 'Movies menu options'
    return if selected_menu_option == :back

    case selected_menu_option.to_s
    when 'show all' then print_all_movies
    when 'get random movie' then print_random_movie
    when 'add new movie' then add_movie
    else on_incorrect_option_selected
    end
    start
  end

  def print_all_movies
    movies = Movie.all
    if movies.present?
      movies.each { |movie| ViewHelpers.print_movie movie }
    else
      puts ' No movies found'
    end
  end

  def print_random_movie
    movie_cortege = Movie.pluck.sample
    if movie_cortege.present?
      movie = Movie.find movie_cortege.first
      ViewHelpers.print_movie movie
    else
      puts ' No movies found'
    end
  end

  def add_movie
    name = request_user_input 'Name'
    description = request_user_input 'Description'
    url = request_user_input 'Link to your movie'
    category_ids = request_user_input 'Categories ids (in format id1,id2 etc)'

    Movie.create!(
      name: name, description: description, url: url, author: current_user,
      category_ids: category_ids.split(',').map(&:to_i)
    )
  rescue ActiveRecord::RecordInvalid
    puts "\n  #{$ERROR_INFO}"
  end
end
