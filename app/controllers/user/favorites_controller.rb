class User::FavoritesController < ApplicationController
	def index
	end

	def create
		@salon = Salon.find(params[:salon_id])
		@favorite = @salon.favorites.new(user_id: current_user.id)
		@favorite.save!
	end

	def destroy
		@salon = Salon.find(params[:salon_id])
	end
end
