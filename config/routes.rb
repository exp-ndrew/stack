Rails.application.routes.draw do
  root to: 'questions#index'

  get 'login', to: 'sessions#new', as: 'login'
  get 'signup', to: 'users#new', as: 'signup'

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

end
