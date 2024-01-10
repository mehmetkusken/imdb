Rails.application.routes.draw do
  resources :series
  resources :movies
  resources :favorite_items
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  # get 'home/index'
  root 'home#index'
  get 'home/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
