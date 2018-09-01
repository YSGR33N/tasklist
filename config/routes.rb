Rails.application.routes.draw do
  root to: "toppages#index"
  
  put 'tasks/:id', to: 'tasks#update'
  
  get 'tasks/edit' 

  get 'tasks/destroy'
  
  get 'tasks/:id/edit', to: 'tasks#edit'

  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :tasks, only: [:create, :destroy]

end
