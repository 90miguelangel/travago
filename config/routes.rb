Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :trips
  resources :resources
  resources :resource_types
  resources :travelers
end
