class Salon::RoomsController < ApplicationController
  def index
  	# メッセージしたサロンを取得する
  	@users = User.all
  end

  def show
  	@user = current_salon
  	@messages = Message.all
  	@user = User.find(params[:user_id])
  end
end
