class User < ActiveRecord::Base
  before_validation :strip_first_name
  validates :first_name, presence: true

  def strip_first_name
    self.first_name.strip! if first_name
  end

  def full_name
    [first_name, last_name].map(&:strip).delete_if(&:blank?).join(' ')
  end
end