require_relative("../lib/movie.rb")
require("imdb")

RSpec.describe Movie do
  let :movie do
    Movie.new
  end


  it "gets 9 posters" do
    the_search = Imdb::Search.new("funny")

    all_movies = the_search.movies.each_slice(20).to_a

    movies = all_movies[0]

    movie.find_poster(movies)
    expect( movie.movies_with_posters.length ).to eq(9)
  end

end