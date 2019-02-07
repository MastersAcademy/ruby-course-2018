class Employer < ActiveRecord::Base
  has_many :users, dependent: :destroy

  validates :department, presence: true, uniqueness: true
end
