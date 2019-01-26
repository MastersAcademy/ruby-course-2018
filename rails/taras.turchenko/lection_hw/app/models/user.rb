# frozen_string_literal: true

class User < ApplicationRecord
  has_many :movies, primary_key: :id, foreign_key: :author_id

  validates :email, presence: true
end
