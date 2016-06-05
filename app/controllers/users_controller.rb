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
     respond_to do |format|
       format.html { redirect_to "users/index"}
       format.js
     end
    else
      render json: {success: false}
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    #redirect_to action: "index"
    render json: {success: true}
  end



end
#-@users.each do |i|
#%tr{:align => 'right', :data_user_id => i.id, :id => 'users_list'}
#%td= i.id
#%td= i.first_name
#%td= i.last_name
#%td= i.email
#%td= i.user_country + ", " + i.user_state + ", " + i.user_city + ", " + i.user_address
#%td
#%span.deleteUser Delete