class User::UsersController < ApplicationController
	before_action :authenticate_user!
	def show
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update(user_params)
		redirect_to edit_user_users_path
	end

	private
	def user_params
		params.require(:user).permit(:name, :age, :email, :job, :image)
	end
end
