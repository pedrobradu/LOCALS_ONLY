class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def manage
    #manage_tagables 
  end
end
