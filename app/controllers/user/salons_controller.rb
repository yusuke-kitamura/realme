class User::SalonsController < ApplicationController
	def index
		@salons = Salon.all
		@user = current_user
	end

	def show
		@salon = Salon.find(params[:id])
	end

	private
	def salon_params
		params.require(:salon).permit(:salon_name, :person_name,:number,:price,:purpose)
	end
end
