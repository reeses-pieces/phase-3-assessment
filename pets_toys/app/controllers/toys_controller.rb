class ToysController < ApplicationController

  def index
    @pet = Pet.find(params[:pet_id])
    @toys = @pet.toys
    # Shortest toy description
    @toys = @pet.toys.sort { |toy1, toy2| toy1.description.length <=> toy2.description.length }
    @toy = @toys.first

    render json: @toy

  end

  def show
    @toy = Toy.find(params[:id])
  end
end
