class App
  MENU_OPTIONS = {
    exit: 0,
    users: 1,
    categories: 2
  }.freeze

  attr_accessor :menu_option

  def start
    selected_menu_option = get_user_selection
    return if selected_menu_option === :exit
    case selected_menu_option
      else puts '  Please. Select correct option!'
    end
    start
  end


  def get_user_selection
    print_menu_options
    print ' Enter menu option`s number: '
    selected_menu_option = gets.chomp.to_i
    MENU_OPTIONS.keys[selected_menu_option]
  end

  def print_menu_options
    puts 'Main menu options:'
    MENU_OPTIONS.keys.each do |option|
      option_number = MENU_OPTIONS[option]
      puts "  #{option_number}. #{option}"
    end
  end
end