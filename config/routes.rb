Rails.application.routes.draw do
  
  root 'pages#home'
  
  
  
  get '/home', to: 'pages#home'
  
  resources :projects do
  
    resources :casts
    resources :schedules
  end
  

  
 # get '/projects', to: 'projects#index'
  
  #get '/projects', to: 'projects#new', as: 'new_project'
  
  get '/projects', to: 'projects#recipients', as: 'recipients'
  
  devise_for :users

   
   
   
   
   
end
