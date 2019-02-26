Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users
  root to: 'pages#home'
  get "profile", to: "users#show", as: :profile
  resources :challenges do
    resources :participants, only: [:create, :new, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
