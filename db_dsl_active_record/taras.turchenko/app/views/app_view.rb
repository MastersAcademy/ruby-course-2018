# frozen_string_literal: true

require_relative './shared/base_view'
require_relative './categories_view'
require_relative './movies_view'
require_relative './auth_view'

# Main app view
class AppView < BaseView
  MENU_OPTIONS = {
    exit: 0,
    categories: 1,
    movies: 2
  }.freeze

  attr_accessor :categories_view, :movies_view, :current_user

  def initialize
    super MENU_OPTIONS
    self.categories_view = CategoriesView.new
    self.movies_view = MoviesView.new
  end

  def start
    unless authorised?
      self.current_user = AuthView.new.do_auth
      movies_view.current_user = current_user
    end

    process_menu
  end

  def process_menu
    selected_menu_option = get_user_selection 'Main menu options'
    return if selected_menu_option == :exit

    case selected_menu_option
    when :categories then categories_view.start
    when :movies then movies_view.start
    else on_incorrect_option_selected
    end
    process_menu
  end

  def authorised?
    current_user.present?
  end
end
