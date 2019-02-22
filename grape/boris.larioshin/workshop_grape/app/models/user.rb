class User < ApplicationRecord
  EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/.freeze
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: EMAIL_REGEXP
  has_many :credentials, dependent: :destroy
end
