Rails.application.routes.draw do
  
  
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :categorie, :defaults => { :format => :json } do
      resources :product, :defautls => { :format => :json }
    end
  end
end
