class ToysController < ApplicationController

  def index
    @pet = Pet.find(params[:pet_id])
    @toys = @pet.toys
    # Shortest toy description
    @toys = @pet.toys.sort { |toy1, toy2| toy1.description.length <=> toy2.description.length }
    @toy = @toys.first

    if request.xhr?
      render json: @toy
    else
      render json: @toys
    end

  end

  def show
    @pet = Pet.find(params[:pet_id])
    @toy = Toy.find(params[:id])
  end
end
