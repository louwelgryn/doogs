Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :projects, only: [:index, :show] do
    resources :tasks, only: [:new, :create]
  end

  resources :commitments, only: [:edit]

  get '/dashboard', to: 'pages#dashboard'

  get '/projects/:id/dashboard', to: 'projects#dashboard', as: 'project_dashboard'

end
