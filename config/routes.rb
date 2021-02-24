Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lives, only: [ :index, :show, :new, :create]
  # TODO maybe nest the bookings to make it easier to find the life?
  resources :users, only: [ :show ]
end
