Rails.application.routes.draw do
  devise_for :salons
  devise_for :users
  
  namespace :user do
  	resource :users
  	resources :salons do
  		resource :favorites, only: [:index, :create, :destroy]
  	end
  end

  namespace :salon do
  	resource :salon ,only: [:show, :edit, :update]
  	resources :users, only: [:show]
  end
end
