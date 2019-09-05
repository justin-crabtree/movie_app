class Api::MoviesController < ApplicationController

  def index
    @movie = Movie.all
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'movie.json.jb'
  end

  def create
    @movie = Movie.new(
      id: params[:id], 
      title: params[:title], 
      year: params[:year], 
      plot: params[:plot],
      director: params[:director],  
      # language: params[:language] 
      )
    if @movie.save
      render 'movie.json.jb'
    else 
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    # @movie.language = params[:language] || @movie.language
    if @movie.save
      render 'movie.json.jb'
    else 
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "This movie has been deleted from the database"}
  end
end
