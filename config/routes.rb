Rails.application.routes.draw do
  root "projects#show"
  resources :user
  resources :company
  resources :projects
end
