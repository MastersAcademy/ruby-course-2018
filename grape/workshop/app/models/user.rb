class User < ApplicationRecord
  EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/.freeze

  authenticates_with_sorcery!

  has_many :credentials, dependent: :destroy

  validates :email,
            presence: true,
            uniqueness: true,
            format: EMAIL_REGEXP

  def auth_token
    payload = { user_id: id }
    JWT.encode payload, Rails.application.secrets.secret_key_base, 'HS256'
  end
end
