class MoviesController < ApplicationController
  def show
    @movies = Movie.find(params[:id])
    render 'show.html.erb'
  end
end
