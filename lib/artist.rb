class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Artist.all << self
    end

    def songs
        Song.all.select do |songs|
            songs.artist == self
        end
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end


    def self.all 
        @@all
    end
end