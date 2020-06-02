class CommentsController < ApplicationController
  before_action :set_image, only: [:create, :destroy, :edit, :update]
 
  def index
  end

  def show
  end

  def edit
    @comment = Comment.find(params[:id]) 
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(description: params[:description])
    redirect_to image_path(@image)
  end

  def create
    @comment = Comment.create(description: params[:description], image:@image, user: current_user)
    redirect_to image_path(@image)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to image_path(@image)
  end

  def new
  end
  private

  def set_image
    @image = Image.find(params[:image_id])
  end
end
