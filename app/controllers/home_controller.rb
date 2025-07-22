class HomeController < ApplicationController
  def index
    @featured_books = Book.includes(:author, :category).limit(6).order(created_at: :desc)
    @categories = Category.includes(:books).limit(8)
    @recent_reviews = Review.includes(:book).recent.limit(5)
  end

  def about
    @total_books = Book.count
    @total_authors = Author.count
    @total_categories = Category.count
    @total_reviews = Review.count
  end
end
