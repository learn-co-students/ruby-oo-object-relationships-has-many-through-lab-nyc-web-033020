class Artist

attr_reader :name    
@@ all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
    Artist.new(name, genre)
    end

    def songs
        Songs.all.select do |songs|
            songs.artist == self
        end
    end

    def genres
        self.songs.map do |songs|
            songs.genre
        end
    end
    

end
