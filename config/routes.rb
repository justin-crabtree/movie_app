Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor" => "actors#show"

    get "/actor/:id" => "actors#show_wildcard"

    post "/actor" => "actors#body"

    get "/movies_all_app" => "movies#movie_all_action"

    get "/movie_single_app" => "movies#movie_single_action"

  end
end


#HTTP gem located in movie_app/movie_http.rb