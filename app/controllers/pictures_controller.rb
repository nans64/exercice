class PicturesController < ApplicationController
    def create
      @user = current_user
      @user.pictures.attach(params[:pictures])
      redirect_to(user_path(@user))
    end
end
