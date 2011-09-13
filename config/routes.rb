DreamMachine::Application.routes.draw do
  resources :dreams
  resources :users
  resources :sessions

  get "signup" => "users#new", :as => "signup"
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#delete", :as => "logout"

  root :to => "dreams#index"
end
