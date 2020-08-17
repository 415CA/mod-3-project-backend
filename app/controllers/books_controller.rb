class BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def create
    @book = Book.create(book_params)
    render json: @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update(Book_params)
    render json: @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render json: @book
  end

  private

  def book_params
    params.permit(:title, :author, :description, :page_count, :image, :info_link)
  end

end
