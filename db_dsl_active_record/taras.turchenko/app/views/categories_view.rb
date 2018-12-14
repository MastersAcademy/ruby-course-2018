# frozen_string_literal: true

require_relative './shared/base_view'

# View for category model
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
    return if selected_menu_option == :back

    case selected_menu_option.to_s
    when 'show all'
      print_all_categories
    when 'show all movies in category'
      category_id = request_user_input 'Category id'
      print_movies_in_category category_id
    when 'create new category'
      create_category
    else
      on_incorrect_option_selected
    end
    puts
    start
  end

  def print_movies_in_category(category_id)
    category = Category.find(category_id)
    if category.blank?
      puts " Not found category with id #{category}"
      return
    end

    if category.movies.any?
      movies.each { |movie| ViewHelpers.print_movie movie }
    else
      puts " Category '#{category.name}' dont have movies"
    end
  end

  def print_all_categories
    categories = Category.all
    if categories.any?
      categories.each { |category| ViewHelpers.print_category category }
    else
      puts ' No categories found'
    end
  end

  def create_category
    puts ' Creating new category'
    name = request_user_input 'Name'
    description = request_user_input 'Description'
    Category.create!(name: name, description: description)
  rescue ActiveRecord::RecordInvalid
    puts "\n  #{$!}"
  end
end
