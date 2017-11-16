Rails.application.routes.draw do
  resources :users
  resources :item_relationships
  resources :relationships
  resources :item_data
  resources :item_fields
  resources :item_types
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
