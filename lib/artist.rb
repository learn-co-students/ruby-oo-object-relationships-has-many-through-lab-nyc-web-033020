require 'pry'

class Artist
	@@all = []
	attr_accessor :name, :songs
	def initialize(name)
		@name = name
		Artist.all << self
	end
	def self.all
		@@all
	end
	def songs
		Song.all.select{|song| song.artist == self}	
	end
	def new_song(name,genre)
		Song.new(name,self,genre)
	end
	def genres
		Genre.all.select do | genre |
			self.songs.any? {|song| song.genre == genre}
		end
	end
end
