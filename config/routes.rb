Rails.application.routes.draw do

    
 get "users" => "fb#users"	

 get "albums" => "fb#albums"

 get "photos" => "fb#photos"

 devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "users/registrations" }
 devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  root 'fb#users'
  
    

  
  get "sign_in" => "wobus#sign_in"

  get "home" => "wobus#home"




  
  
 
  
  #if the user login session active, dashboard should be the homepage
  #if the user not login, step_on page should be the homepage
  
  
end