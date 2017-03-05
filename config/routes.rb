Rails.application.routes.draw do
  resources :companies
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'companies#index'
end
