class User::RoomsController < ApplicationController

  def index
  	# メッセージしたサロンを取得する
  	@salons = Salon.all
  end

  def show
  	@user = current_user
  	@salon = Salon.find(params[:salon_id])
  	@messages = Message.all
  end
end
