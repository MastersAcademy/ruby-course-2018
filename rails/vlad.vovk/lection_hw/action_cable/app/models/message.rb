class Message < ApplicationRecord
  after_create_commit :broadcast

  belongs_to :user, optional: true
  belongs_to :room, optional: true

  validates :body, presence: true, length: { maximum: 255 }

  def broadcast
    MessageBroadcastJob.perform_later(self)
  end
end
