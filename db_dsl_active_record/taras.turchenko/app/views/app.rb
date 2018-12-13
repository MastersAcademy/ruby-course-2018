require_relative './categories'
require_relative './shared/base_view'

class App < BaseView
  MENU_OPTIONS = {
    exit: 0,
    users: 1,
    categories: 2
  }.freeze

  def initialize
    super MENU_OPTIONS
  end

  def start
    selected_menu_option = get_user_selection 'Main menu options'
    return if selected_menu_option === :exit
    case selected_menu_option
    when :categories
      CategoriesView.new.start
    else
      puts '  Please. Select correct option!'
    end
    start
  end
end