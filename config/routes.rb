Rails.application.routes.draw do
  # get 'applies/new'
  # post 'applies/create'


  get 'companies/show'

  devise_for :companies
  get  "companies/applies"  => "companies#applies"
  resources :companies, only: [:show]
  get "companies/:id" => "companies#show", as: :mypage

  devise_for :user_devises
  resources :user_devises, only: [:show]

  root 'scrapings#index'
  get  "scrapings/search"  => "scrapings#search"
  resources :scrapings
  

  # root 'application#hello'
  resources :users
  resources :resumes
  resources :jobs
  resources :applies
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
