Rails.application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  
end












=begin
Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/home' 			# тогда нужно использовать для указания пути во вьюхах static_pages_home_path

  get 'static_pages/help'

  get "static_pages/about"

  get "static_pages/contact"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=end