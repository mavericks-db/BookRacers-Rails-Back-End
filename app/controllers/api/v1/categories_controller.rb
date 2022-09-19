class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    if @categories
      render json: { category: @categories }
    else
      render json: { error: 'No categories yet' }
    end
  end

  def show
    @motorcycles = Motorcycle.where(id: params[:id])
    if @motorcycles
      render json: { motorcycle: @motorcycles }
    else
      render json: { error: 'Motorcycle not found' }
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: { message: @category }, status: :ok
    else
      render json: { error: 'Error creating category' }
    end
  end

  def destroy
    @category = Category.find_by_id(params[:id])
    if @category.destroy
      render json: { message: 'Category deleted successfully' }
    else
      render json: { error: 'Error deleting category' }
    end
  end

  private

  def category_params
    params.require(:category).permit(:catname)
  end
end
