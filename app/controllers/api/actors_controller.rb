class Api::ActorsController < ApplicationController

  def actor_action
    @actor = Actor.find_by(id: 5)
    render 'actor.json.jb'
  end


end
