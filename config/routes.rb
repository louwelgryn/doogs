Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :projects, only: [:index, :show] do
    resources :tasks, only: [:new, :create, :update]
    resources :events, only: [:create] do
      resources :participations, only: [:create, :update]
    end
  end

  resources :commitments, only: [:update]

  get '/dashboard', to: 'pages#dashboard'

  get '/projects/:id/dashboard', to: 'projects#dashboard', as: 'project_dashboard'

  get '/projects/:id/search', to: 'projects#search', as: 'project_search'

  get '/tasks/status/:id' , to: 'tasks#status_update', as: 'status_update'
end
