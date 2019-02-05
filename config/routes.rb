Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :picture
  resources :users
  resources :snaps
  resources :relationships


post '/email', to: 'users#email'
end
