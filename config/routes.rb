Rails.application.routes.draw do
  get '', to: 'home#index'
  
  namespace :api do
    devise_for :users, controllers: { sessions: "api/users/sessions", registrations: "api/users/registrations", passwords: "api/users/passowrds" }
    resources :post
  end
end
