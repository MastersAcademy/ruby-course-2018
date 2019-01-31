class User < ApplicationRecord
  has_secure_password
  has_many :messages
  has_and_belongs_to_many :rooms

  before_save :downcase_email

  validates :nickname, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  def downcase_email
    self.email = self.email.strip.downcase
  end
end
