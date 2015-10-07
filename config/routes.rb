Rails.application.routes.draw do
  resources :definitions
  # resources :examples

  resources :sessions do
    collection do
      delete :destroy
    end
  end

  root 'definitions#index'

  get 'search', to: 'definitions#search'

end
