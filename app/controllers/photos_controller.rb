class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Your photo has been added!"
      redirect_to '/'
      # redirect_to user_session_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to user_path(@user)
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :description, :image)
  end
end
