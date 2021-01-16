Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :skills
  resources :my_skills, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
