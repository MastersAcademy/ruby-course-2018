class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new; end

  def create
    attrs = declared(params).merge author: current_user
    movie = Movie.create! attrs
    redirect_to movie
  rescue
    flash[:notice] = $ERROR_INFO
    redirect_to new_movie_path
  end

  def show
    @movie = Movie.find params[:id]
  end

  def vote
    movie = Movie.find params[:id]
    begin
      movie.vote! params[:rating].to_i
    rescue
      flash[:notice] = $ERROR_INFO
    end
    redirect_to movie
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    movie = Movie.find params[:id]
    begin
      movie.update! declared(params[:movie])
      redirect_to movie
    rescue
      flash[:notice] = $ERROR_INFO
      redirect_to edit_movie_path(movie)
    end
  end

  def destroy
    movie = Movie.find params[:id]
    begin
      movie.destroy!
      redirect_to movies_path
    rescue
      flash[:notice] = $ERROR_INFO
      redirect_to movie
    end
  end

  private

  def declared(params)
    params.permit(Movie::PROPERTIES).merge(
      description: params[:description],
      category_ids: params[:category_ids]
    )
  end
end
