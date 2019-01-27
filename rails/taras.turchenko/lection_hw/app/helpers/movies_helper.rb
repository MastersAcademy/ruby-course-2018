module MoviesHelper
  def movie_vote_path(movie_id)
    "/cinema/movies/#{movie_id}/vote"
  end
end
