Rails.application.routes.draw do
  devise_for :users
  resources :sales
  resources :accounts

  root "accounts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
