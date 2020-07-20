class Salon::SalonsController < ApplicationController
	def show
		@salon = current_salon
	end

	def edit
		@salon = current_salon
	end

	def update
		@salon = current_salon
		@salon.update(salon_params)
		redirect_to edit_user_users_path
	end

	private
	def salon_params
		params.require(:salon).permit(:salon_name, :person_name, :email, :number, :price, :purpose)
	end
end
