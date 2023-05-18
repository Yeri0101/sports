Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  resources :activities do
    resources :bookings, only: %i[create]
    resources :reviews, only: %i[create index]

    collection { get :me }
  end

  resources :bookings, only: %i[destroy index]

  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end

  resources :reviews, only: %i[destroy]
end
