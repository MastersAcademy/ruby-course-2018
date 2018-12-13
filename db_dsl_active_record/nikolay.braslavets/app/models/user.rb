class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :songs, dependent: :destroy
  has_many :playlists, dependent: :destroy

  before_validation :strip_first_name

  validates :first_name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  def full_name_and_email
    [first_name, last_name, email].map(&:strip).delete_if(&:blank?).join(' ')
  end

  def show_all_playlists
    puts 'List your playlist:'
    playlists.map { |pl| puts "Name: #{pl.name}\nDicsription: #{pl.description}" }
  end

  def show_all_songs
    puts 'List your song:'
    songs.map do |pl|
      puts "Song: #{pl.artist} - #{pl.name} / #{pl.genre} genre\nfound in palylist: #{pl.playlist.name}"
    end
  end

  private

  def strip_first_name
    self.first_name.strip! if first_name
  end
end