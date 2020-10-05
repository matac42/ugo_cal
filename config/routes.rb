Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'blogs#index'
  resources :blogs

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
