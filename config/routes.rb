
Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  default_url_options host: "3000"

  devise_for :users, controllers: { sessions: 'users/sessions', 
                                    registrations: 'users/registrations' 
                                  }
  resources :users
  resources :comments
  
  resources :articles do
    member do
      put :create_comment
     # post:create_comment
    end
  end

  root 'static_pages#home'

  get '/home', to: 'static_pages#home'

  get '/article', to: 'static_pages#articles'

  get '/help', to: 'static_pages#help'

  get '/signup', to: 'users#new'

  post '/signup',  to: 'users#create'

  resources :articles

  get '/article', to: 'articles#new'  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
