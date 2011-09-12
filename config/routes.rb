DreamMachine::Application.routes.draw do
  resources :dreams
  resources :users
  resources :sessions

  get "sign_up" => "users#new", :as => "sign_up"
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#delete", :as => "log_out"

  root :to => "dreams#index"
end
