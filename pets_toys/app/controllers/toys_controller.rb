class ToysController < ApplicationController

  before_action :set_pet

  def index
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
    @toy = Toy.find(params[:id])
  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end
end
