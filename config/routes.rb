Rails.application.routes.draw do
  root to: 'children#index'
  resources :wishlists
  resources :donations
  resources :toys
  resources :children
  resources :users

  root to: "children#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
