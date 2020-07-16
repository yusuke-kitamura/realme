class Salon::SalonsController < ApplicationController
	def show
		@salon = current_salon
	end

	def edit
		@salon = current_salon
	end

	def update
		@salon = current_salon
		@salon.update
		redirect_to edit_user_users_path
	end
end
