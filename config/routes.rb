Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  
  root 'static_pages#welcome'

  get 'welcome', to: "static_pages#welcome"
  get 'static_pages/rules'
  get 'static_pages/disclaimer'

  resources :users
  # resources :sessions

end
