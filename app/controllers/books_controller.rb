class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(list_params)

    book.save

    redirect_to books_path
  end

  def edit
  end

  private
  def book_paramms
    params.require(:book).permit(:本のタイトル, :感想)
  end
end
