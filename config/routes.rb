Rails.application.routes.draw do
  resources :giftees
  root "gifts#index"

  resources :posts
  # get "/posts", to: "posts#index"
  # get "/posts/new", to: "posts#new"
  # get "/posts/:id", to: "posts#show"
  # post "/posts", to: "posts#create"
  # delete "/posts/:id", to: "posts#delete"
  
  # get "/search/:search_value", to: "posts#search"
  # get "/special", to: "gifts#dummy"

  # get "/gifts", to: "gifts#index"
  get "/purchased", to: "gifts#purchased"
  
  resources :gifts

  resources :giftee

  # get "/contacts", to: "contacts#index", as: :contacts
  # get "/contacts/:id", to: "contacts#show", as: :contact
  resources :contacts, only: [:index, :show]

  # get "/people", to: "people#index"
  # get "/people/create", to: "people#create"
  # get "/people/:id", to: "people#show", as: :people_show
  # post "/people", to: "people#create"
  # put "/people", to: "people#update"
  # delete "/people", to: "people#delete"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
