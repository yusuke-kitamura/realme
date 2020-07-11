Rails.application.routes.draw do
  devise_for :salons, controllers: {   
  registrations: 'salons/registrations',
  sessions: 'salons/sessions' }

  devise_for :users, controllers: {   
  registrations: 'users/registrations',
  sessions: 'users/sessions' }
  
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
