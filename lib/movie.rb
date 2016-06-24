require("imdb")
class Movie
	attr_accessor( :movies_with_posters)
	def initialize
		@movies_with_posters = []
	end

	def find_poster(movies)
		i = 0
		while @movies_with_posters.length < 9
			if movies[i].poster != nil
				@movies_with_posters.push(movies[i])
			end
			i = i + 1
		end
	end
end