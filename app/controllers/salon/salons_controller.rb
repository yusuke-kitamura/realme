class Salon::SalonsController < ApplicationController
	def show
		@salon = Salon.find(params[:id])
	end

	def edit
		@salon = Salon.find(params[:id])
	end

	def update
		@salon = Salon.find(params[:id])
		@salon.update
		redirect_to edit_user_users_path
	end
end
