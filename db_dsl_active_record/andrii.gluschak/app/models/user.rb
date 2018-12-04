class User < ActiveRecord::Base

  has_many :posts
  has_many :image, as: :imageable

  before_validation :strip_first_nane

  validates :first_name, presence: true

  def full_name
    [first_name, last_name].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def strip_first_nane
    self.first_name.strip! if first_name
  end
end
