class User < ApplicationRecord
  EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/.freeze

  has_secure_password
  has_many :credentials, dependent: :destroy

  validates :email,
            presence: true,
            uniqueness: true,
            format: EMAIL_REGEXP
  def secret_data
    'I am secret data'
  end
end
