Amazon::Application.routes.draw do
  resources :sessions
  resources :items
  resources :users
  resources :reviews
  root :to => "items#index"

end

# get "login" => 'sessions#new', :as => :login
#  post "create_session" => 'sessions#create', :as => :create_session