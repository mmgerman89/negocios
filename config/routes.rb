Rails.application.routes.draw do
  devise_for :users
  root 'home_page#index'

  resources :user_plans, only: [ :new, :create ]
  get '/validar/:id', to: 'user_plans#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
