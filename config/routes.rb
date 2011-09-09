DreamMachine::Application.routes.draw do
  resources :dreams
  resources :users

  get "sign_up" => "users#new", :as => "sign_up"

  root :to => "users#new"
end
