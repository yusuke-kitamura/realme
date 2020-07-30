class User::RoomsController < ApplicationController
  def show
  	@user = current_user
  	@salon = Salon.find(params[:salon_id])
  	@messages = Message.all
  end
end
