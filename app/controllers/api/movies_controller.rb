class Api::MoviesController < ApplicationController

  def index
    @movie = Movie.all
    render "movie.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'movie.json.jb'
  end

  def create
    @movie = Movie.create(
      id: params[:id], 
      title: params[:title], 
      year: params[:year], 
      plot: params[:plot]
      )
    render 'movie.json.jb'
  end

  def update
    @movie = Movie.find_by(id: params[:id])

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.save
    render 'movie.json.jb'
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "This movie has been deleted from the database"}
  end
end
