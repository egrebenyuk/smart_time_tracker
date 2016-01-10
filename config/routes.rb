Rails.application.routes.draw do
  root "projects#show"
  
  resources :projects
end
