class Work < ActiveRecord::Base
  has_many :users

  before_validation :strip_user_profession

  validates :profession, presence: true

  def user_profession
    [profession].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def strip_user_profession
    self.profession.strip! if profession
  end
end