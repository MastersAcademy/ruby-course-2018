require_relative './categories_view'
require_relative './shared/base_view'
require_relative './movies_view'

class AppView < BaseView
  MENU_OPTIONS = {
    exit: 0,
    users: 1,
    categories: 2,
    movies: 3
  }.freeze

  attr_accessor :categories_view, :movies_view

  def initialize
    super MENU_OPTIONS
    self.categories_view = CategoriesView.new
    self.movies_view = MoviesView.new
  end

  def start
    selected_menu_option = get_user_selection 'Main menu options'
    return if selected_menu_option === :exit
    case selected_menu_option
      when :categories
        categories_view.start
      when :movies
        movies_view.start
      else
        on_incorrect_option_selected
    end
    puts
    start
  end
end