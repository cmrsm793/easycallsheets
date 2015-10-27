Rails.application.routes.draw do
  
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  
  get '/projects', to: 'projects#index'
  
  devise_for :users

   
   
   
   
   
end
