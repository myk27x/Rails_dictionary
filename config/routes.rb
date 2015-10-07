Rails.application.routes.draw do
  devise_for :users
  resources :definitions

  resources :examples

  root 'definitions#index'

  get 'search', to: 'definitions#search'

end
