class UsersController < ApplicationController

  def index
    @users = User.all
    #@user = User.new
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
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.errors.empty?
      render json: {success: true}
      #redirect_to action: "index"
    else
      render json: {success: false}
      #render "new"
    end
    #render text: params.inspect
    #render json: {success: true}
    #redirect_to action: "index"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    #redirect_to action: "index"
    render json: {success: true}
  end



end
