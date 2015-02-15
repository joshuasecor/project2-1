class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation))
		if user.save
			redirect_to users_path
		end
	end

	def show
	end

	def update
	end

	def destroy
	end

end
