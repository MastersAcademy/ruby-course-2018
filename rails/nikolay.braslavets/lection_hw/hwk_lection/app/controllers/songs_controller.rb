class SongsController < ApplicationController

  before_action :set_song, only: [ :show, :edit, :update, :destroy ]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = current_user.songs.create(song_params)
    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update_attributes(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:artist, :name, :genre)
  end

  def set_song
    @song = Song.find(params[:id])
  end

end