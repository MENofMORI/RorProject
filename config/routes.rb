Rails.application.routes.draw do
  resources :shops
  resources :addresses
  resources :owners
  resources :categories
  resources :items

  root to: "shops#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
