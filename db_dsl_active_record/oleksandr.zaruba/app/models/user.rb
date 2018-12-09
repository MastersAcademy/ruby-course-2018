class User < ActiveRecord::Base
  belongs_to :employer
  has_one :work

  before_validation :strip_first_name

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    [first_name, last_name].map(&:strip).delete_if(&:blank?).join(' ')
  end

  def user_profession
    self.works.map { |worker| p "Profession #{worker.profession}" }
  end

  def user_department
    self.employers.map { |worker| p "Department #{worker.department}" }
  end

  private

  def strip_first_name
    self.first_name.strip! if first_name
  end
end
