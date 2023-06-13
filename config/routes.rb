Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #resources :movies, except: [:destroy ] do
  #resources :movies, only: [:index ] do
  resources :lists, only [:new, :create, :show]
  #  resources :bookmarks, only: [:create, :new, :show, :destroy]
  #end
  #resources :movies, only: [:index, :show]
  root to:"list#index"
end
