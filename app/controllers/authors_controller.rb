class AuthorsController < ApplicationController
  def index
    @authors = Author.includes(:books).page(params[:page]).per(12)
  end

  def show
    @author = Author.find(params[:id])
    @books = @author.books.includes(:category).page(params[:page]).per(9)
  end
end
