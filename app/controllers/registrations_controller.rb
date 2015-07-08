# class RegistrationsController < ApplicationController
#   def create
#     @user = User.create(user_params)
#   end
#
#   def edit
#     @user = User.find(params[:id])
#     @registration
#   end
#
#   def update
#     @user = User.find(params[:id])
#     if @user.update(user_params)
#       redirect_to user_path(@user)
#       console.log('test')
#     else
#       render :edit
#     end
#   end
#
#   private
#
#   def user_params
#     params.require(:user).permit(:avatar)
#   end


end
