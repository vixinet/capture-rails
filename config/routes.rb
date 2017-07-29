Rails.application.routes.draw do
  
  resources :customers
  resources :retailers
  root 'sessions#new'

  match 'dashboard', to: 'dashboard#home', :via => :get

  match 'login', to: 'sessions#new', :via => :get
  match 'login', to: 'sessions#create', :via => :post
  match 'logout', to: 'sessions#destroy', :via => [:get, :delete]
  
end
