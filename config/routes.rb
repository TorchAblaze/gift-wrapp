Rails.application.routes.draw do
  root "gifts#index"

  resources :posts
  # get "/posts", to: "posts#index"
  # get "/posts/new", to: "posts#new"
  # get "/posts/:id", to: "posts#show"
  # post "/posts", to: "posts#create"
  # delete "/posts/:id", to: "posts#delete"
  
  # get "/search/:search_value", to: "posts#search"
  # get "/special", to: "gifts#dummy"

  get "/gifts", to: "gifts#index"
  get "/purchased", to: "gifts#purchased"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
