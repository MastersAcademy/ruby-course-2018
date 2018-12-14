# frozen_string_literal: true

class BaseView
  attr_accessor :menu_options

  def initialize(menu_options)
    self.menu_options = menu_options
  end

  protected

  def get_user_selection(menu_label)
    print_menu_options menu_label
    print ' Enter menu option`s number: '
    selected_menu_option = gets.chomp.to_i
    puts
    menu_options.keys[selected_menu_option]
  end

  def print_menu_options(menu_label)
    puts " #{menu_label}:"
    menu_options.keys.each do |option|
      option_number = menu_options[option]
      puts "  #{option_number}. #{option}"
    end
  end

  def request_user_input(label)
    print " #{label}: "
    gets.chomp
  end

  def on_incorrect_option_selected
    puts '  Please. Select correct option!'
  end
end
