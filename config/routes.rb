Rails.application.routes.draw do
  root 'scrapings#index'
  get  "scrapings/search"  => "scrapings#search"

  # root 'application#hello'
  resources :users
  resources :resumes
end
