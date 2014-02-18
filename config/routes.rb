Bismarck::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root 'pages#index'
  get '/about', to: 'pages#about'
  get '/mebel', to: 'pages#mebel'
  get '/icons', to: 'pages#icons'
  get '/contact', to: 'pages#contact'
end
