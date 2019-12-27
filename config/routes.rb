Rails.application.routes.draw do
  resources :business_categories
  resources :recommendation_products
  resources :recommendations
  resources :users
  resources :products
  resources :product_categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
