class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, uniqueness: { scope: :user }

  def add_song(song)
    songs << song
    self.songs_count = songs.count
    save
  end
end
