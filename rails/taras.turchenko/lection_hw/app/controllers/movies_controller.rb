class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show; end

  def update; end

  def new; end
end
