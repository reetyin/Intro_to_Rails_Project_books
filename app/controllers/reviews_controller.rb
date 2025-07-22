class ReviewsController < ApplicationController
  before_action :set_book

  def index
    @reviews = @book.reviews.recent.page(params[:page]).per(10)
  end

  def create
    @review = @book.reviews.build(review_params)

    if @review.save
      redirect_to @book, notice: "Review was successfully created."
    else
      @reviews = @book.reviews.recent.page(params[:page]).per(5)
      render "books/show", status: :unprocessable_entity
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content, :reviewer_name)
  end
end
