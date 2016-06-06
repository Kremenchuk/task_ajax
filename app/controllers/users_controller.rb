class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
  end

  def show
    #@users = User.all
    #redirect_to action: "index"
  end

  def new

  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.js   {}
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
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



#.col-md-8{:id => "new_user"}
#.col-md-1 id
#.col-md-2 First name
#.col-md-2 Last name
#.col-md-2 E-mail
#.col-md-3 Address
#.col-md-1 Delete user