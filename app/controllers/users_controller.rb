class UsersController < ApplicationController
  def favorite
    @user = User.find(params[:id])
    @favorites_pictures = @user.favorite_pictures
  end

  def show
    @user = User.find(params[:id])
    @favorites_pictures = @user.favorite_pictures
  end

end
