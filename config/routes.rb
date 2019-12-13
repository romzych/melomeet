Rails.application.routes.draw do
  get 'join_groups/create'
  get 'join_groups/index'
  get 'join_groups/new'
  get 'join_groups/edit'
  get 'join_groups/show'
  get 'join_groups/update'
  get 'join_groups/destroy'
  root 'home_page#index'
    devise_for :users, controllers: { registrations: "registrations" }

  resources :groups do 
  resources :join_groups end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :follows
  resources :groups
  resources :join_groups
  resources :specialitys
  resources :users
  resources :after_signups
end
