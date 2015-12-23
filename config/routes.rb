Rails.application.routes.draw do
  get '', to: 'static_pages#index'
  get 'login', to: 'static_pages#login'
end
