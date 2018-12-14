# frozen_string_literal: true

require 'active_record'

class Category < ActiveRecord::Base
  has_and_belongs_to_many :movies

  validates :name, presence: true
end
