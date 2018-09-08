class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorites_pictures = @user.favorite_pictures
  end
end
