Rails.application.routes.draw do
  resources :posts
  get "/gifts", to: "gifts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
