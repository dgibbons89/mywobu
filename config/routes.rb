Rails.application.routes.draw do

    

 devise_for :users, :controllers => { : omniauth_callbacks => "omniauth_callbacks" }
 get 'auth/failure' => redirect('/')
 get 'signout' => 'users#destroy', as: 'signout'
 
  
   

  root "pages#home"




  
  
 
  
  #if the user login session active, dashboard should be the homepage
  #if the user not login, step_on page should be the homepage
  
  
end