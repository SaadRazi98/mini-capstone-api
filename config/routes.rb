Rails.application.routes.draw do
  
get "/products" => "products#index"
get "/products/:id" => "products#show"
post "/products" => "products#create"
patch "products/:id" => "product#update"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

