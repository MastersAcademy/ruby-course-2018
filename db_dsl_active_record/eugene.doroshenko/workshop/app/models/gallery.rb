class Gallery < ActiveRecord::Base
  belongs_to :user
  has_many :photos, dependent: :destroy
end