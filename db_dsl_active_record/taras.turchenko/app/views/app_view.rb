require_relative './categories_view'
require_relative './shared/base_view'

class AppView < BaseView
  MENU_OPTIONS = {
    exit: 0,
    users: 1,
    categories: 2
  }.freeze

  attr_accessor :categories_view

  def initialize
    super MENU_OPTIONS
    self.categories_view = CategoriesView.new
  end

  def start
    selected_menu_option = get_user_selection 'Main menu options'
    return if selected_menu_option === :exit
    case selected_menu_option
      when :categories
        categories_view.start
      else
        puts '  Please. Select correct option!'
    end
    start
  end
end