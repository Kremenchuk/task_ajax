class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

   respond_to do |format|
      if @user.save
        format.html { render action: "index", notice: 'User was successfully created.' }
        format.js   {}
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "index" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

   #@user = User.create(params[:user])
   #if @user.errors.empty?
   #  redirect_to action: "index"
   #  #respond_to do |format|
   #  #  format.html { redirect_to "users/index"}
   #  #  format.js
   #  #end
   #else
   #   render json: {success: false}
   #end
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