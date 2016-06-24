require_relative("../lib/movie.rb")

RSpec.describe Movie do
  let :movie do
    Movie.new
  end


  it "gets 9 posters" do
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    @search_movie = Imdb::Search.new("funny")
    expect( movie.find_poster.length ).to eq(9)
  end

end