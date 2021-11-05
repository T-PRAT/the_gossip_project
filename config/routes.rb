Rails.application.routes.draw do
  root to: 'gossip#index'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'

  resources :gossip
  resources :user
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
