Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  resources :definitions

  resources :examples

  root 'definitions#index'

  get 'search', to: 'definitions#search'

end
