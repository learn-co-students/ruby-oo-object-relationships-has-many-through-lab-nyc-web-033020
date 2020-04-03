class Genre

    attr_accessor :name
    
    @@all = []
    @name = name
    @@all << self

    def self.all
        @@all
    end

    def songs
        Song.all {|song| song.genre == self}
    end

    def add_song(song)
        songs << song
    end
end