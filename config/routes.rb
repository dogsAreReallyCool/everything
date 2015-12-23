Rails.application.routes.draw do
    get 'sessions/new'

    get 'users/new'

    get '', to: 'static_pages#index'
    get 'dashboard', to: 'static_pages#dashboard'
  
    get "log_out" => "sessions#destroy", :as => "log_out"
    get "log_in" => "sessions#new", :as => "log_in"
    get "sign_up" => "users#new", :as => "sign_up"
    root :to => "users#new"
    resources :users
    resources :sessions
end
