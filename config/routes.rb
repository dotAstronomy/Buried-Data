ActionController::Routing::Routes.draw do |map|
  map.resources :user_sessions

  map.resources :users

  map.resources :datasets, :has_many => [ :observations ]
  
  map.resources :observations
  

  map.root :controller => "home"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.about "/about", :controller => :home, :action => :about
  map.login "/login", :controller => :user_sessions, :action => :new
  map.logout "/logout", :controller => :user_sessions, :action => :destroy
  map.signup '/signup', :controller => :users, :action => :new
  map.profile '/profile', :controller => :users, :action => :profile
end
