Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :skills do
    resources :bookings
  end
  resources :bookings do
    member do
      patch :confirm
    end
  end
  get '/dashboard', to: 'pages#dashboard'
end
