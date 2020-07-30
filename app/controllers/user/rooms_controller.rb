class User::RoomsController < ApplicationController
  def show
  	@user = current_user
  	@messages = Message.all
  end
end
