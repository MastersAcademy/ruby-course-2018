class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, uniqueness: { scope: :user }

  before_save :update_counter

  def add_song(song)
    songs << song
    save
  end

  private

  def update_counter
    self.songs_count = songs.count
  end
end
