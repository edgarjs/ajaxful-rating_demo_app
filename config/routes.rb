ActionController::Routing::Routes.draw do |map|
  map.resources :cars, :member => {:rate => :post}
  map.root :cars
  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.login 'login', :controller => 'sessions', :action => 'new'
  map.resources :sessions

  map.resources :users
end
