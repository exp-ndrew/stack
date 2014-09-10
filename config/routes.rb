Rails.application.routes.draw do
  root to: 'questions#index'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'signup', to: 'users#new', as: 'signup'

  resources :users
  resources :questions

  resources :sessions, :only => [:new, :create, :destroy]

end
