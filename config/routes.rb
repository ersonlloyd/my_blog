
Rails.application.routes.draw do

  resources :users

  get 'users/new'

  root 'static_pages#home'

  get '/home', to: 'static_pages#home'

  get '/article', to: 'static_pages#articles'

  get '/help', to: 'static_pages#help'

  get '/signup', to: 'users#new'

  post '/signup',  to: 'users#create'  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
