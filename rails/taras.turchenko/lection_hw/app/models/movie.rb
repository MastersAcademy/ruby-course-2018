# frozen_string_literal: true

class Movie < ApplicationRecord
  PROPERTIES = [:id, :categories, :category_ids, :author, :author_id, :name, :rating, :url].freeze

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
