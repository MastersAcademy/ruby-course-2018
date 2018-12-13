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

    if category.movies.empty?
      puts " Category '#{category.name}' dont have movies"
      return
    end

    movies.each(&method(:print_movie))
  end

  def print_all_categories
    categories = Category.all
    if categories.empty?
      puts " No categories found"
      return
    end

    categories.each do |category|
      puts "  #{category.id}. #{category.name}"
      puts(' ' + category.description) if category.description.present?
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
