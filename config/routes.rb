Rails.application.routes.draw do
  get 'restaurants' => 'restaurants#index'
  resources :restaurants
end
