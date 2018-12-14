# frozen_string_literal: true

require_relative './shared/base_view'
require_relative './shared/view_helpers'

class MoviesView < BaseView
  attr_accessor :current_user

  def initialize
    super MENU_OPTIONS
  end

  def start
    selected_menu_option = get_user_selection 'Movies menu options'
    return if selected_menu_option == :back

    case selected_menu_option.to_s
    when 'show all'
      print_all_movies
    when 'get random movie'
      print_random_movie
    when 'add new movie'
      add_movie
    else
      on_incorrect_option_selected
    end
    puts
    start
  end

  private

  MENU_OPTIONS = {
    back: 0,
    'show all': 1,
    'get random movie': 2,
    'add new movie': 3
  }.freeze

  def print_all_movies
    movies = Movie.all
    if movies.empty?
      puts ' No movies found'
      return
    end

    movies.each { |movie| ViewHelpers.print_movie movie }
  end

  def print_random_movie
    random_id = Movie.pluck.sample
    movie = Movie.offset(random_id).first

    if movie.blank?
      puts ' No movies found'
      return
    end

    ViewHelpers.print_movie movie
  end

  def add_movie
    name = request_user_input 'Name'
    description = request_user_input 'Description'
    url = request_user_input 'Link to your movie'
    category_ids = request_user_input 'Categories ids (in format id1,id2 etc)'
    category_ids = category_ids.split(',').map(&:to_i)
    begin
      Movie.create!(
        name: name,
        description: description,
        url: url,
        author: current_user,
        category_ids: category_ids
      )
    rescue ActiveRecord::RecordInvalid
      puts "\n  #{$!}"
    end
  end
end
