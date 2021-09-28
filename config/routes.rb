Rails.application.routes.draw do
  resources :genres
  resources :favorites
  #devise_for :users
  resources :users  
  resources :movies 
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
