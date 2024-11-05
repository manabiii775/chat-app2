Rails.application.routes.draw do
  get 'messages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"]
  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end
