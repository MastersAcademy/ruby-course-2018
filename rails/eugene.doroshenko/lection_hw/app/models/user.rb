class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :galleries, dependent: :destroy
  has_many :photos, dependent: :destroy

  def full_name
    [first_name, last_name].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def strip_first_name
    self.first_name.strip! if first_name
  end

end
