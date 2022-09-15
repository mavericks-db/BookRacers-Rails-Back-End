class Api::V1::MotorcyclesController < ApplicationController
  def index
    @motorcycles = Motorcycle.all
    render json: @motorcycles
  end
end
