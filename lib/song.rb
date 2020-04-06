class Song
    @@all = []
    attr_reader :genre, :artist, :name
  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@all << self
  end
  def self.all
 @@all  
end
  end