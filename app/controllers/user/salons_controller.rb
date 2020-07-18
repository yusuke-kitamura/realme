class User::SalonsController < ApplicationController
	def index
		@salons = Salon.all
		@user = current_user
	end

	def show
		@salon = Salon.find(params[:id])
	end
end
