Rails.application.routes.draw do
  root to: 'gossip#index'
  get 'user/new'
  get 'user/info'
  get '/', to: 'static#index'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'user/:first_name', to: 'user#show', as: 'user'

  resources :gossip
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
