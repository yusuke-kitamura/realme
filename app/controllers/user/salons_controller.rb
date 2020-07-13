class User::SalonsController < ApplicationController
	def index
		@salon = Salon.all
	end

	def show
	end
end
