Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bienvenida", to: "home#index"
  get "articles/10", to: "articles#show"
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"

end
