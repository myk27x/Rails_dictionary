Rails.application.routes.draw do
  resources :definitions

  resources :sessions do
    collection do
      delete :destroy
    end
  end

  resources :examples

  root 'definitions#index'

  get 'search', to: 'definitions#search'

end
