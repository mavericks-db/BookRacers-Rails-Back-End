class Api::V1::MotorcyclesController < ApplicationController
  def index
    @motorcycles = Motorcycle.all
    if @motorcycles
      render json: {motorcycle: @motorcycles}
    else
      render json: {error: 'No motorcycles yet'}
    end
  end

  def show
    @motorcycle = Motorcycle.find(params[:id])
    render json: @motorcycle
    if @motorcycle
      render json: { motorcycle: @motorcycle }
    else
      render json: { error: 'Unable to find motorcycle' }
    end
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      render json: {message: "Motorcycle created successfully"}
    else
      render json: {error: 'Error creating motorcycle'}
    end
  end

  def destroy
    @motorcycle = Motorcycle.find_by_id(params[:id])
    if @motorcycle.destroy
      render json: {message: "Motorcycle deleted successfully"}
    else
      render json: {error: 'Error deleting motorcycle'}
    end
  end
end
