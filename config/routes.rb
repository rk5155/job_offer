Rails.application.routes.draw do
  devise_for :companies

  devise_for :user_devises
  resources :user_devises, only: [:show]

  root 'scrapings#index'
  get  "scrapings/search"  => "scrapings#search"
  resources :scrapings
  

  # root 'application#hello'
  resources :users
  resources :resumes
  resources :jobs
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
