Rails.application.routes.draw do
  root 'jobs#index'

  resources :jobs
  devise_for :companies
  devise_for :users
end
