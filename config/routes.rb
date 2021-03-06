Rails.application.routes.draw do

  root 'mains#index'

  get '/login', to: 'sessions#new', as: 'login_form'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/login', to: 'sessions#destroy', as: 'logout'

  resources :mains, only: [:index]

  resources :works do
    resources :votes, only: [:create]
  end

  resources :users, only: [:index, :show]

end
