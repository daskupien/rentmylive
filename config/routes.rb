Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lives, only: [ :index, :show, :new, :create, :destroy] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :users, only: [ :show ]
  resources :bookings, only: [ :destroy ]
    # resources :bookings, only: [ :confirm_booking, :reject_booking ]
  patch '/confirm_booking/:id', to: 'bookings#confirm_booking', as: :confirm
  patch '/reject_booking/:id', to: 'bookings#reject_booking', as: :reject
end
