class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_secure_password

  has_many :songs, dependent: :destroy
  has_many :playlists, dependent: :destroy

  before_validation :strip_first_name

  validates :first_name, :last_name, presence: true,
            format: { with: /\A[a-zA-Zа-яА-Я]+\z/, message: "only allows letters" }

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  private

  def strip_first_name
    self.first_name.strip! if first_name
  end
end
