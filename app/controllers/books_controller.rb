class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :category)

    # Filter by category if provided
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @books = @books.where(category: @category)
    end

    # Filter by author if provided
    if params[:author_id].present?
      @author = Author.find(params[:author_id])
      @books = @books.where(author: @author)
    end

    @books = @books.page(params[:page]).per(12)
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews.recent.page(params[:page]).per(5)
    @new_review = Review.new
  end

  def search
    @query = params[:q]
    @category_filter = params[:category]

    if @query.present?
      # SQLite使用LIKE替代ILIKE，并用LOWER()实现不区分大小写搜索
      @books = Book.joins(:author, :category)
                   .where("LOWER(books.title) LIKE ? OR LOWER(books.description) LIKE ? OR LOWER(authors.name) LIKE ?",
                          "%#{@query.downcase}%", "%#{@query.downcase}%", "%#{@query.downcase}%")

      if @category_filter.present?
        @books = @books.where("categories.name = ?", @category_filter)
      end

      @books = @books.includes(:author, :category).page(params[:page]).per(10)
    else
      @books = Book.none.page(params[:page])
    end

    @categories = Category.pluck(:name)
  end
end
