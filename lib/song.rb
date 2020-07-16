class Song
    attr_reader :artist, :genre
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        Song.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_artist(artist)
        all.select { |song| song.artist == artist }
    end
end
