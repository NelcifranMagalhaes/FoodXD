Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :stores  
  resources :users
  root to: 'stores#index'
  get 'stores_list', to: 'stores#stores_list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
