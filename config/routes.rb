Bismarck::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root 'pages#index'

  # navigation
  get '/about', to: 'pages#about'
  get '/mebel', to: 'mebels#index'
  get '/icons', to: 'pages#icons'
  get '/contact', to: 'pages#contact'

  # under nav
  get '/mebel/bibble', to: 'mebels#bibble'
  get '/mebel/cloakroom', to: 'mebels#cloakroom'
  get '/mebel/cupboard', to: 'mebels#cupboard'
  get '/mebel/hall', to: 'mebels#hall'
  get '/mebel/kids', to: 'mebels#kids'
  get '/mebel/kitchen', to: 'mebels#kitchen'
  get '/mebel/kitchen/classic', to: 'mebels#classic'
  get '/mebel/kitchen/timenow', to: 'mebels#timenow'
  get '/mebel/lounge', to: 'mebels#lounge'


  # articles
  get '/article-01', to: 'articles#article01', as: :article01
  get '/article-02', to: 'articles#article02', as: :article02
  get '/article-03', to: 'articles#article03', as: :article03
  get '/article-04', to: 'articles#article04', as: :article04

end
