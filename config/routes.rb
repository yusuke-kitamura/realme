Rails.application.routes.draw do
  devise_for :salons
  devise_for :users
  
  namespace :user do
  	resourse :users
  	resourses :salons do
  		resourse :favorites, only: [:index, :create, :destroy]
  	end
  end

  namespace :salon do
  	resourse :salon ,only: [:show, :edit, :update]
  	resourses :users, only: [:show]
  end
end
