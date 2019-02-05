class Room < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :messages, dependent: :destroy

  validates :title, presence: true, length: { maximum: 40 }
end
