Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
 
 # root to: 'application#home'
  root to: 'users#new'
  

  #when the user requests the /home url, then the controller will send them the home view file
  

  get '/new', to: "users#new"
  get '/signin', to: "sessions#signin"
  post '/login', to: "sessions#create"
end


# HTTP Verb:	  Path:	      Controller#Action:	 Used for:
# GET	          /photos	    photos#index	       display a list of all photos