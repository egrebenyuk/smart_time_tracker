Rails.application.routes.draw do
  root "projects#show"
  resources :users
  resources :companies
  resources :projects
  resource :tasks
end
