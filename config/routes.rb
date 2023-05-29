Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/flats", to: "flats#index" # static route
  get "/cheap-flats", to: "flats#cheap", as: "cheap"
  get "/flats/:id", to: "flats#show", as: "flat" # dynamic route
  # get "/best-flats", to: "flats#best"
end
