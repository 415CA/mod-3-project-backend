class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
    render json: @libraries
  end

  def create
    @library = Library.create(library_params)
    render json: @library
  end

  def update
    @library = Library.find(params[:id])
    @library.update(Library_params)
    render json: @library
  end

  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    render json: @library
  end

  private

  def library_params
    params.permit(:book_id, :user_id, :page, :progress, :book, :user)
  end

end
