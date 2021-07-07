class Song
  attr_reader :artist, :genre
  @@all = []

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    Song.all << self
  end

  def self.all
    @@all
  end


end