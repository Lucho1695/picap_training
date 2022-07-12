class TestController < ApplicationController
  def pokemon
    render json: PokemonApi.new.search
  end
end
