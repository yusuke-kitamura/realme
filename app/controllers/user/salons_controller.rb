class User::SalonsController < ApplicationController
	def index
		@salons = Salon.all
		@user = current_user
	end

	def show
		@user = current_user
		@salon = Salon.find(params[:id])
	end
end
