Velvet10::Application.routes.draw do

  devise_for :users

  # Set the root url
  root :to => 'home#index'

    
    # Generated model routes
    resources :events


end
