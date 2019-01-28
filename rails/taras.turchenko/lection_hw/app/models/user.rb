# frozen_string_literal: true

class User < ApplicationRecord
  PROPERTIES = %i(id email password)

  has_secure_password

  has_many :movies, primary_key: :id, foreign_key: :author_id

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
