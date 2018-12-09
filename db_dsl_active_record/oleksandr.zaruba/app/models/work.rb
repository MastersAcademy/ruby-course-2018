class Work < ActiveRecord::Base
  belongs_to :users

  validates :profession, presence: true

end
