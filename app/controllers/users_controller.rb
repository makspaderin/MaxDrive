class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to '/'
		else
			redirect_to '/signup'
		end
	end

	def edit
    	@user = User.find(params[:id])
  	end

  	def update
    	@user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to '/home'
    else
      render 'edit'
    end
  end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :password, :photo)
	end
end
