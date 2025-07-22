class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:books).page(params[:page]).per(12)
  end

  def show
    @category = Category.find(params[:id])
    @books = @category.books.includes(:author).page(params[:page]).per(9)
  end
end
