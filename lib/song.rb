class Song
	@@all = []
	attr_accessor :name, :genre, :artist

	def initialize(name,artist,genre)
		@name = name
		@artist = artist
		@genre = genre
		Song.all << self
	end
	def self.all
		@@all
	end
end
