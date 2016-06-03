class UsersController < ApplicationController
  before_filter :find_user, only: [:destroy]

  def index
    @users = User.all
    #@user.first_name = "Bob"
    #@user.last_name = "Bond"
    #@user.email = "asd@gmail.com"
    #@user.user_country = "USA"
    #@user.user_state = "Arizona"
    #@user.user_city = "City"
    #@user.user_address = "1-st strit"
    #@user.save!
  end

  def new
    #@user = User.new
  end

  def create

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: "index"
    render json: {success: true}
  end


  private

  def find_user
    @user = User.find(params[:id]).first
  end

end
