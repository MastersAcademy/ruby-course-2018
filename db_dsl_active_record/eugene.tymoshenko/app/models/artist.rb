require_relative 'concerns/name_formatter'

class Artist < ActiveRecord::Base
  include NameFormatter

  has_many :songs, dependent: :destroy
end
