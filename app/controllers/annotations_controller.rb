class AnnotationsController < ApplicationController
  
  def index
    @annotations = Annotation.all
    render json: @annotations
  end

  def show
    @annotation = Annotation.find(params[:id])
    render json: @annotation
  end

  def create
    @annotation = Annotation.create(annotation_params)
    render json: @annotation
  end

  def update
    @annotation = Annotation.find(params[:id])
    @annotation.update(annotation_params)
    render json: @annotation
  end

  def destroy
    @annotation = Annotation.find(params[:id])
    @annotation.destroy
    render json: @annotation
  end

  private

  def annotation_params
    params.permit(:book_id, :page_number, :comment)
  end

end
