Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  resources :activities do
    resources :bookings, only: %i[create]
    resources :reviews, only: %i[create index]
  end

  resources :bookings, only: %i[destroy index]
  resources :reviews, only: %i[destroy edit update]
end
