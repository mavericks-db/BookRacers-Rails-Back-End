class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    if @categories
      render json: {category: @categories}
    else
      render json: {error: 'No categories yet'}
    end
  end

  def show
    @motorcycles = Motorcycle.where(id: params[:id])
    if @motorcycles
      render json: {motorcycle: @motorcycles}
    else
      render json: {error: 'Motorcycle not found'}
    end
  end

  
end
