Rails.application.routes.draw do
  
  get 'admins/index'
  root "students#index"
  get '/index', to: 'users#index'

  resources :students
  resources :users
  resources :admins
  resources :doctors
  resources :products
end
