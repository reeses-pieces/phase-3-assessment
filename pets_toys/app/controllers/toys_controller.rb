class ToysController < ApplicationController

  def index
    @pet = Pet.find(params[:pet_id])
    @toys = @pet.toys

    if request.xhr?
      #ajax
    else
      render json: @toys
    end
  end

  def show
    @toy = Toy.find(params[:id])
  end
end
