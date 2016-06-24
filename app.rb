require_relative("lib/movie.rb")
require("sinatra")
require("imdb")


movie = Movie.new

get "/" do
	erb(:home)
end

post "/movie_list" do
	@term = params[:term]

	the_search = Imdb::Search.new(@term)

	all_movies = the_search.movies.each_slice(20).to_a

	@movies = all_movies[0]

	erb(:poster)
end

