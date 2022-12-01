Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :activities do
    resources :bookings, only: %i[create index new]

    resources :reviews, only: %i[create index new]

    collection do
      match 'search' => 'activities#search', via: %i[get post], as: :search
    end
  end

  resources :bookings, only: %i[destroy edit show update]

  resources :reviews, only: %i[destroy edit show update]
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
end
