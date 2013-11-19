class ImagesController < ApplicationController
  def new
    @user = current_user
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.user = current_user
    @image.save
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update(params[:image].permit(:file))
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
  end

  def index
    @user = current_user
    @albums = current_user.albums
  end

  def show
    @image = Image.find(params[:id])
  end
  
  private
  def image_params
    params.require(:image).permit(:file)
  end
end
