Rails.application.routes.draw do
  resources :categories
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bienvenida", to: "home#index"

  root to: "home#index"

  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end
=begin
  get "articles", to: "articles#index"
  get "articles/:id/edit", to: "articles#edit"
  get "articles/new", to: "articles#new", as: :new_articles
  get "articles/:id", to: "articles#show"
  post "articles", to: "articles#create"
  patch "/articles/:id", to: "articles#update", as: :article
  delete "articles/:id", to: "articles#destroy"
=end

end
