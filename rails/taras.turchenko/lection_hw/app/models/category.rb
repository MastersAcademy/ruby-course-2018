# frozen_string_literal: true

class Category < ApplicationRecord
  PROPERTIES = [:id, :name, :description].freeze

  has_and_belongs_to_many :movies

  validates :name, presence: true

  def self.prepare_for_selector
    Category.all.map { |category| [category.name, category.id] }
  end
end
