class Genre
    @@all = []
   attr_reader :name
def initialize(name)
    @name = name
    @@all << self
    @songs = []
end
def songs
Song.all.select do |song|
    song.genre == self
end
end
def self.all
    @@all
end
def artists
songs.map do |song|
    song.artist
end
end

end