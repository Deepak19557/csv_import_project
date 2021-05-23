class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    #c
    #debugger
    @users = User.all 
    @user  = User.new 
  end

  def create
	if User.import(params[:user][:file])
       redirect_to users_path,  notice:  "Imported users successfully."
   	else
   		redirect_to users_path, notice: "file type must be csv or xls or xlsx"
   	end
  end

  def destroy
     #debugger 
     @user = User.find_by(params[:id])
     @user.destroy
     redirect_to root_path
     #respond_to :js 
   end
end