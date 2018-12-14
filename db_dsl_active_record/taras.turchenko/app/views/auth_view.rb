# frozen_string_literal: true

require_relative './shared/base_view'

class AuthView < BaseView
  def initialize
    super MENU_OPTIONS
  end

  def do_auth
    selected_menu_option = get_user_selection 'You are not authorised'
    case selected_menu_option.to_s
    when 'login'
      user_login = request_user_input 'login'
      password = request_user_input 'password'
      puts
      login user_login, password
    when 'registration'
      user_login = request_user_input 'login'
      password = request_user_input 'password'
      puts
      registration user_login, password
    else
      on_incorrect_option_selected
      do_auth
    end
  end

  private

  MENU_OPTIONS = {
    login: 0,
    registration: 1
  }.freeze

  def login(login, password)
    user = User.find_by(login: login)
    unless password === user.password
      puts ' Incorrect password'
      return do_auth
    end

    user
  rescue ActiveRecord::RecordNotFound
    puts " Not found user with login '#{login}'\n"
    do_auth
  end

  def registration(login, password)
    return User.create!(login: login, password: password)
  rescue ActiveRecord::RecordInvalid
    puts "\n  #{$!}"
    return do_auth
  end
end
