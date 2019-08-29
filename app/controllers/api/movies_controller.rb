class Api::MoviesController < ApplicationController

  def movie_all_action
    @movie = Movie.all
    render "movie.json.jb"
  end

  def movie_single_action
    @movie = Movie.first
    render 'movie.json.jb'
  end


end
