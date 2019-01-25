class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.seller_id = params[:seller_id]
    @book.category_id = params[:category_id]
    if @book.save
      @books = Book.all
      render :index, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :price, :description)
  end
end
