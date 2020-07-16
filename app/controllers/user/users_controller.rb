class User::UsersController < ApplicationController
	def show
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update
		redirect_to edit_user_salon_path
	end
end
