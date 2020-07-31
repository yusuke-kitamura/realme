class Salon::RoomsController < ApplicationController
  def show
  	@user = current_salon
  	@messages = Message.all
  	@user = User.find(params[:user_id])
  end
end
