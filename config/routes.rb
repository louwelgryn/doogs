Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :projects, only: [:index, :show] do
    resources :tasks, only: [:new, :create, :update]
  end

  resources :commitments, only: [:update]

  get '/dashboard', to: 'pages#dashboard'

  get '/projects/:id/dashboard', to: 'projects#dashboard', as: 'project_dashboard'

  get '/projects/:id/search', to: 'projects#search', as: 'project_search'

  resources :events, only: [:new, :create, :index, :show, :destroy]
end
