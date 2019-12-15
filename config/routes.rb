Rails.application.routes.draw do
  root 'home_page#index'
    devise_for :users, controllers: { registrations: "registrations" }

  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :follows
  resources :groups
  resources :join_groups
  resources :specialitys
  resources :users
  resources :after_signups
end
