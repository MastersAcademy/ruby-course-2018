class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new; end

  def create
    attrs = declared(params).merge(
      author: current_user,
      description: params[:description],
      category_ids: params[:category_ids]
    )
    movie = Movie.create! attrs
    redirect_to movie
  rescue
    flash[:notice] = $ERROR_INFO
    redirect_to new_movie_path
  end

  def show
    @movie = Movie.find params[:id]
  end

  def update; end

  def vote
    movie = Movie.find params[:id]
    begin
      movie.vote! params[:rating].to_i
    rescue
      flash[:notice] = $ERROR_INFO
    end
    redirect_to movie
  end

  private

  def declared(params)
    params.permit Movie::PROPERTIES
  end
end
