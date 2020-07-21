class Salon::SalonsController < ApplicationController
	before_action :authenticate_salon!
	def show
		@salon = current_salon
	end

	def edit
		@salon = current_salon
	end

	def update
		@salon = current_salon
		@salon.update!(salon_params)
		redirect_to salon_salon_path
	end

	private
	def salon_params
		params.require(:salon).permit(:salon_name, :person_name, :email, :number, :price, :purpose, :image)
	end
end
