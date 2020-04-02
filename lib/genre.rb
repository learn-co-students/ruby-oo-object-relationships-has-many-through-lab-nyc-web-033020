class Genre
	@@all = []
	attr_accessor :name
	def initialize (name)
		@name = name
		Genre.all << self
	end
	def self.all
		@@all
	end
	def songs
		Song.all.select {|song| song.genre == self}		
	end
	def artists
		Artist.all.select{|artist| artist.genres.include?(self)}
	end
end
