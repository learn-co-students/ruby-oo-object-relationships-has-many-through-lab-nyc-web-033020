require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    #knows about all artist instances (solution includes @@all array)
    def self.all
        @@all
    end

    #given a name and genre, creates a new song associated with that artist
    def new_song(name, genre)
        Song.new(name, self, genre) #(why do we need to include self? is it to secure the relationship?)
    end

    #returns all songs associated with this Artist (select to target all that satisfy the condition)
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    #has many genres, THROUGH songs (mapping require to create a new array)
    def genres
        Song.all.map do |song_genre| 
            song_genre.genre
        end
    end
 end