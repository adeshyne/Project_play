class UsersController < ApplicationController
  def index
    @user = User.all
  end 

  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    end

  def create
  	@user = User.new(user_params)
  	if @user.save
      log_in @User
  		flash[:notice] = "WELOME TO THE CLUB!"
      redirect_to @user
  	else
  		flash[:alert] = "USER NOT CREATED!"
  		render 'new'
  	end
 end

 def destroy
    log_out #when logged straight to login page again
    redirect_to root_url
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password, :username, :password_confirmation)
  end
end

