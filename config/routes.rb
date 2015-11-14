Rails.application.routes.draw do
  
  
  root 'pages#home'
  
  
  
  get '/home', to: 'pages#home'
  
  resources :projects do
    resources :casts
    resources :schedules
    resources :previews, only: [:index]
    resources :callsheets
    member do
      post 'state'
    end
  end
  
  resources :archives, only: [:index]

  
 # get '/projects', to: 'projects#index'
  
  #get '/projects', to: 'projects#new', as: 'new_project'
  
  devise_for :users, :controllers => { registrations: 'users/registrations' }
   
   
   
   
   
end
