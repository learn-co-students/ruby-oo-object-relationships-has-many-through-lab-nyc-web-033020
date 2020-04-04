class Artist 
attr_reader :name, :genre
    @@all = []
    def initialize(name)
        @name = name 

        Artist.all << self 
    end
 
    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist.name 
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        Song.all.map do |song|
            song.genre
        end
    end

end
