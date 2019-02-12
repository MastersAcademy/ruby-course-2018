class PlaylistsController < ApplicationController
  def index
    @playlist = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = current_user.playlists.create(playlist_params)
    if @playlist.save
      redirect_to @playlist
    else
      render :new
    end
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :description)
  end
end