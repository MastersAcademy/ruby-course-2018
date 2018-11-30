class Employer < ActiveRecord::Base
  has_many :users

  before_validation :strip_user_department

  validates :department, presence: true

  def user_department
    [department].map(&:strip).delete_if(&:blank?).join(' ')
  end

  private

  def strip_user_department
    self.department.strip! if department
  end
end