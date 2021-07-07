class Artist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.find_by_artist(self)
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map {|song| song.genre}
    end
end