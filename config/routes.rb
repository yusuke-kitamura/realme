Rails.application.routes.draw do
  namespace :salon do
    get 'rooms/show'
  end
  namespace :user do
    get 'rooms/show'
  end
  devise_for :salons, controllers: {   
  registrations: 'salons/registrations',
  sessions: 'salons/sessions' }

  devise_for :users, controllers: {   
  registrations: 'users/registrations',
  sessions: 'users/sessions' }

  root "homes#top"
  
  namespace :user do
    get 'favorites' => 'favorites#index'
    get 'rooms' => 'rooms#index'
  	resource :users
  	resources :salons do
  		resource :favorites, only: [:create, :destroy]
      resource :rooms, only: [:show]
  	end
  end

  namespace :salon do
  	resource :salon ,only: [:show, :edit, :update]
  	resources :users, only: [:show]
    resources :rooms, only: [:show]
  end
end
