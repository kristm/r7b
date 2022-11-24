Rails.application.routes.draw do
  root 'home#index'
  get 'dashboard', to: 'home#dashboard'
  resources :articles
  put '/articles/:id/upvote', to: 'articles#upvote', as: 'upvote_article'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
