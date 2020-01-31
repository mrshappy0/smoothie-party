Rails.application.routes.draw do

  # removed :smoothie_ingredients endpoint becasue we don't need them on the internwebbbzzz
  # resources :smoothie_ingredients

  resources :ingredients, only: [:index] #this exposes only the index!
  resources :smoothies, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
