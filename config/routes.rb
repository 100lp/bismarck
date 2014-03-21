Bismarck::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root 'pages#index'

  # navigation
  get '/about', to: 'pages#about'
  get '/mebel', to: 'pages#mebel'
  get '/icons', to: 'pages#icons'
  get '/contact', to: 'pages#contact'

  # under nav
  get '/mebel/kitchen', to: 'pages#kitchen'

  # articles
  get '/article-01', to: 'articles#article_01'
  get '/article-02', to: 'articles#article_02'
  get '/article-03', to: 'articles#article_03'
  get '/article-04', to: 'articles#article_04'

end
