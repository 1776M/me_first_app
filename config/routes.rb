MeFirstApp::Application.routes.draw do

  get "articles/index"

  root :to => "articles#index"      

  match "/auth/:provider/callback" => "sessions#create"  
  match "/signout" => "sessions#destroy", :as => :signout  
  
  resources :articles  


end
