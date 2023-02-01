# Rails.application.routes.draw do
#   root 'user#index'
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
#   resources :users, only: [:index, :show] do
#     resources :posts, only: [:index, :show]
#   end  
# end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "users#index"
  get "/users/:id", to: "users#show"
  get "/users/:id/posts", to: "posts#index"
  get "/users/:user_id/posts/:id", to: "posts#show"

  # Defines the root path route ("/")
  # root "articles#index"
end
