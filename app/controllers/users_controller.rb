class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@pedals = @user.pedals.page(params[:page]).per_page(20)
  end
end
