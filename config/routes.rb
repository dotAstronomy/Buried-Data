BuriedData::Application.routes.draw do
  resources :user_sessions
  resources :users
  resources :datasets
  resources :observations
  match '/' => 'home#index'
  match '/:controller(/:action(/:id))'
  match '/about' => 'home#about', :as => :about
  match '/login' => 'user_sessions#new', :as => :login
  match '/logout' => 'user_sessions#destroy', :as => :logout
  match '/signup' => 'users#new', :as => :signup
  match '/profile' => 'users#profile', :as => :profile
end
