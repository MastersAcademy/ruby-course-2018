class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, presence: true,
            format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  validates :email, presence: true, uniqueness: true

end
