
Rails.application.routes.draw do


  get 'users/new'

  root 'static_pages#home'

  get '/home', to: 'static_pages#home'

  get '/article', to: 'static_pages#articles'

  get '/help', to: 'static_pages#help'

  get '/signup', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
