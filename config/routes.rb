Rails.application.routes.draw do
  resources :sleads
  resources :scontacts
  resources :saccounts
  root 'home#index'
  devise_for :users
  get "/home/stable" => "home#stable"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
