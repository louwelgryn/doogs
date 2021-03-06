Rails.application.routes.draw do
  mount ActionCable.server => "/cable"

  devise_for :users

  root to: 'pages#home'

  resources :projects, only: [:index, :show] do
    resources :tasks, only: [:new, :create, :update]
    resources :events, only: [:create]
    resources :ressources, only: [:create, :index]
  end

  resources :commitments, only: [:update]
  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create] do
      member do
        put "like", to: "messages#upvote"
        put "dislike", to: "messages#downvote"
      end
    end
  end

  get '/dashboard', to: 'pages#dashboard'

  get '/projects/:id/dashboard', to: 'projects#dashboard', as: 'project_dashboard'

  get '/projects/:id/search', to: 'projects#search', as: 'project_search'

  get '/tasks/status/:id' , to: 'tasks#status_update', as: 'status_update'


end

