class Api::ActorsController < ApplicationController

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'actor.json.jb'
  end

  def show_wildcard
    id = params[:id]
    @actor = Actor.find_by(id: id)
    render 'actor.json.jb'
  end

  def body
    @actor = Actor.find_by(id: params[:id])
    render 'actor.json.jb'
  end

end
