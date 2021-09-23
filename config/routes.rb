Rails.application.routes.draw do
  # get 'applies/new'
  # post 'applies/create'


  get 'companies/show'

  devise_for :companies, controllers: { registrations: 'companies/registrations'}

  get  "companies/applies"  => "companies#applies"
  resources :companies, only: [:show]
  get "companies/:id" => "companies#show", as: :mypage_companies

  devise_for :user_devises, controllers: {   registrations: 'user_devises/registrations',
    sessions: 'user_devises/sessions' }
    
  resources :user_devises, only: [:show]
  get "user_devises/:id" => "user_devises#show", as: :mypage_user_devises

  root 'scrapings#index'
  get  "scrapings/search"  => "scrapings#search"
  resources :scrapings
  

  # root 'application#hello'
  resources :users
  resources :resumes
  resources :jobs
  resources :applies
  get  "applies/completion"  => "applies#completion"
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
