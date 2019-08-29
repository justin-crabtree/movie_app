require 'http'

response = HTTP.get("http://localhost:3000/api/movies_all_app")

movie_http = response.parse

pp movie_http