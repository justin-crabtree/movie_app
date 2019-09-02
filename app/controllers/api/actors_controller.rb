class Api::ActorsController < ApplicationController

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'actor.json.jb'
  end

  def index
    @actor = Actor.all
    render 'actor.json.jb'
  end

  def create
    @actor = Actor.create(
      id: params[:id], 
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      known_for: params[:known_for]
      )
    render 'actor.json.jb'
  end

  def update
    @actor = Actor.find_by(id: params[:id])

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:first_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.save
    render 'actor.json.jb'
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: {message: "This actor has been deleted from the database"}
  end

end
