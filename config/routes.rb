Rails.application.routes.draw do
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
