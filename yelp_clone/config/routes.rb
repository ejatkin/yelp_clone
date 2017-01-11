Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :restaurants do
    resources :reviews
  end
  
  root "restaurants#index"

end


# devise_scope :user do
# delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
# end
