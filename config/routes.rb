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
  get '/mebel/lounge', to: 'mebels#lounge'


  # articles
  get '/article-01', to: 'articles#article_01'
  get '/article-02', to: 'articles#article_02'
  get '/article-03', to: 'articles#article_03'
  get '/article-04', to: 'articles#article_04'

end
