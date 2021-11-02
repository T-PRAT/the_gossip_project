Rails.application.routes.draw do
  get 'gossip/show'
  get 'user/new'
  get 'user/info'
  get '/', to: 'static#index'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'user/:first_name', to: 'user#show', as: 'user'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
