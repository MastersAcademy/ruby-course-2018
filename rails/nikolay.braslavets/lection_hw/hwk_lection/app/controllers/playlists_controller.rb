class PlaylistsController < ApplicationController

  before_action :set_playlist, only: [ :show, :edit, :update, :destroy ]

  def index
    @playlist = Playlist.all
  end

  def show
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
  end

  def update
    if @playlist.update_attributes(playlist_params)
      redirect_to @playlist
    else
      render :edit
    end
  end

  def destroy
    @playlist.destroy
    redirect_to playlists_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :description)
  end

  def set_playlist
    @playlist = Playlist.find(params[:id])
  end

end