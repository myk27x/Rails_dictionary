Rails.application.routes.draw do
  resources :definitions

  resources :examples

  root 'definitions#index'

  get 'search', to: 'definitions#search'

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

end
