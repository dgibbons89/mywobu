Rails.application.routes.draw do
    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'

    
    resources :wobus


    

  root "wobus#home"
  get "faq" => "pages#faq"
  get "facebook" => "pages#facebook"
end