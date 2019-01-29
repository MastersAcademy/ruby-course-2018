# frozen_string_literal: true

require 'active_record'
require 'uri'

# Movie ActiveRecord model
class Movie < ActiveRecord::Base
  has_and_belongs_to_many :categories
  belongs_to :author,
             class_name: 'User',
             primary_key: :id,
             foreign_key: :author_id

  validates :name, presence: true
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100
  }
  validates :author_id, presence: true, numericality: { only_integer: true }
  validates :url,
            presence: true,
            format: { with: URI::DEFAULT_PARSER.make_regexp }
end
