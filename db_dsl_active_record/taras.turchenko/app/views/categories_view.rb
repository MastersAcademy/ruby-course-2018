# frozen_string_literal: true

require 'English'

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
    puts
    selected_menu_option = get_user_selection 'Categories menu options'
    return if selected_menu_option == :back

    case selected_menu_option.to_s
    when 'show all' then print_all_categories
    when 'show all movies in category' then print_movies_in_category
    when 'create new category' then create_category
    else on_incorrect_option_selected
    end
    start
  end

  def print_movies_in_category
    category_id = request_user_input 'Category id'
    category = Category.find(category_id)
    return puts " Not found category with id #{category}" if category.blank?

    if category.movies.any?
      return category.movies.each { |movie| ViewHelpers.print_movie movie }
    end

    puts " Category '#{category.name}' dont have movies"
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
    puts "\n  #{$ERROR_INFO}"
  end
end
