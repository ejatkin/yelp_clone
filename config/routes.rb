Rails.application.routes.draw do
  get 'restaurants' => 'restaurants#index'
  resources :restaurants do
    resources :reviews
  end
end
