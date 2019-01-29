# frozen_string_literal: true

require 'English'

require_relative './shared/base_view'

# Authentication view
class AuthView < BaseView
  MENU_OPTIONS = {
    login: 0,
    registration: 1
  }.freeze

  def initialize
    super MENU_OPTIONS
  end

  def do_auth
    selected_menu_option = get_user_selection 'You are not authorised'
    unless MENU_OPTIONS.key? selected_menu_option
      on_incorrect_option_selected
      do_auth
    end
    send selected_menu_option
  end

  def login
    login = request_user_input 'login'
    password = request_user_input 'password'

    user = User.find_by(login: login)
    return user if password == user.password

    puts ' Incorrect password'
    do_auth
  rescue ActiveRecord::RecordNotFound
    puts ' Not found user with this login'
    do_auth
  end

  def registration
    login = request_user_input 'login'
    password = request_user_input 'password'
    User.create!(login: login, password: password)
  rescue ActiveRecord::RecordInvalid
    puts "\n  #{$ERROR_INFO}"
    do_auth
  end
end
