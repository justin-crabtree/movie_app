Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get "/movies/:id" => "movies#show"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors/:id" => "actors#show"
    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"

  end
end


#HTTP gem located in movie_app/movie_http.rb