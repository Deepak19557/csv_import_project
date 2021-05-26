class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all 
    @user  = User.new 
  end

  def create
    #debugger
    @user = User.new(clip:params[:user][:clip])

    #@user = User.new (video_params)
    @user.save
	  if User.import(params[:user][:file])
      redirect_to users_path,  notice:  "Imported users successfully."
    else
   		redirect_to users_path, notice: "file type must be csv or xls or xlsx"
   	end
  end

  # def destroy
  #  debugger 
  #  @user = User.find_by(params[:data])
  #  @user.destroy
  #  redirect_to root_path
  #  respond_to :js 
  # end

  # def delete_user
  #  @user = User.find_by(params[:data])
  #  @user.destroy
  #  redirect_to root_path
  #  respond_to :js 
  # end

  def user_delete
    #byebug
    @user = User.find_by(params[:data])
    @user.destroy
    redirect_to root_path
  end

  # private
  # def video_params
  #     params.require(:user).permit(:clip)
  # end
end
