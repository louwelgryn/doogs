Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :projects, only: [:index, :show] do
    resources :tasks, only: [:new, :create, :update]
    resources :events, only: [:create]
  end

  resources :commitments, only: [:update]

  get '/dashboard', to: 'pages#dashboard'

  get '/projects/:id/dashboard', to: 'projects#dashboard', as: 'project_dashboard'

  get '/projects/:id/search', to: 'projects#search', as: 'project_search'


  get '/tasks/status/:id' , to: 'tasks#status_update', as: 'status_update'
  get '/chat_room/:id' , to: 'chat_rooms#show', as: 'chat_room'
  post '/chat_room/:chat_room_id/messages', to: 'messages#create', as: 'chat_room_messages'
end
