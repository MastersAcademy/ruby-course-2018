require 'active_record'

class User < ActiveRecord::Base
  before_validation :strip_strings

  validates :avatar, presence: true
  validates :password, presence: true
  validates :login, presence: true

  private

  def strip_strings
    self.avatar.strip! if avatar
    self.password.strip! if password
    self.login.strip! if login
  end
end