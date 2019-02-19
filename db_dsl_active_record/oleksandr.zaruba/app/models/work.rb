class Work < ActiveRecord::Base
  has_many :users

  validates :profession, presence: true, uniqueness: true

end
