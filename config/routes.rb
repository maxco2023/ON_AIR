Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :clubs, only: %i[new create show edit update destroy] do
    resources :bookings, only: %i[new create update]
  end
  get 'bookings/:id', to: 'bookings#accepted', as: :booking_accepted

  get 'bookings/:id', to: 'bookings#validated', as: :booking_validated
  get 'bookings/:id', to: 'bookings#cancelled', as: :booking_cancelled
  get 'bookings/:id', to: 'bookings#declined', as: :booking_declined

  delete 'bookings/:id', to: 'bookings#destroy', as: :bookings_delete
  get 'dashboard', to: 'pages#dashboard'
  get 'users/:id', to: 'users#show', as: :user
end


