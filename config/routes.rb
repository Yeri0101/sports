Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :activities do
    resources :bookings
    resources :reviews, only: %i[create index new]
  end

  resources :reviews, only: %i[destroy edit show update]
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
end
