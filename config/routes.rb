Rails.application.routes.draw do
  resources :organisations
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'invoices#index'
  
  resources :invoices
  get 'invoices/new', to: 'invoices#index'
end



