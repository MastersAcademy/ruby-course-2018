class User < ActiveRecord::Base
  has_many :galleries, dependent: :destroy
  has_many :photos, dependent: :destroy

  before_validation :strip_first_name
  validates :first_name, presence: true

  def full_name
    [first_name, last_name].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def strip_first_name
    self.first_name.strip! if first_name
  end

end

