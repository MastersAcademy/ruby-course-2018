require_relative './shared/base_view'

class CategoriesView < BaseView
  MENU_OPTIONS = {
    back: 0,
    'show all': 1,
    'show all movies in category': 2,
    'create new category': 3
  }.freeze

  def initialize
    super MENU_OPTIONS
  end

  def start
    selected_menu_option = get_user_selection 'Categories menu options'
    return if selected_menu_option === :back
    case selected_menu_option.to_s
    when 'show all'
      print_all_categories
    when 'create new category'
      create_category
    else
      puts '  Please. Select correct option!'
    end
    puts
    start
  end

  def print_all_categories
    Category.all.each_with_index do |category, index|
      puts "  #{index}. #{category.name}"
      puts(' ' + category.description) if category.present?
    end
  end

  def create_category
    puts ' Creating new category'
    name = request_user_input 'Name'
    description = request_user_input 'Description'
    begin
      Category.create!(name: name, description: description)
    rescue ActiveRecord::RecordInvalid
      puts "\n  #{$!}"
    end

  end
end
