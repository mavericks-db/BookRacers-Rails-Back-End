class Api::V1::MotorcyclesController < ApplicationController
  before_action :logged_in

  def index
    motorcycles = Motorcycle.all.order(created_at: :desc).includes(%i[picture_attachment reservations])
    if motorcycles
      render json: motorcycles, include: [:reservations]
    else
      render json: { error: 'No motorcycles yet' }
    end
  end

  def show
    motorcycle = Motorcycle.find_by_id(params[:id])
    if motorcycle
      render json: motorcycle, include: [:reservations]
    else
      render json: { error: 'Unable to find motorcycle' }
    end
  end

  def create
    motorcycle = Motorcycle.new(motorcycle_params)
    if motorcycle.save
      render json: { message: 'Motorcycle created successfully' }
    else
      render json: { error: 'Error creating motorcycle' }
    end
  end

  def destroy
    motorcycle = Motorcycle.find_by_id(params[:id])
    if motorcycle.destroy
      render json: { message: 'Motorcycle deleted successfully' }
    else
      render json: { error: 'Error deleting motorcycle' }
    end
  end

  def update
    motorcycle = Motorcycle.find_by_id(params[:id])
    if motorcycle.update(reserved_params)
      render json: { message: 'Motorcycle updated successfully' }
    else
      render json: { error: 'Error updating motorcycle' }
    end
  end

  private

  def motorcycle_params
    params.require(:motorcycle).permit(:image, :category_id, :rental_price, :year, :brand, :model, :reserved, :picture)
  end

  def reserved_params
    params.require(:motorcycle).permit(:reserved, :id)
  end
end
