class User < ApplicationRecord
  has_secure_password
  before_validation :strip_first_name
  validates :first_name, presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
                with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }

  def full_name
    [first_name, last_name].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def strip_first_name
    self.first_name.strip! if first_name
  end

end
