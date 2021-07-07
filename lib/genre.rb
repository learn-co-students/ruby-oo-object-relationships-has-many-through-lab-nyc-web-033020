class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre
    end
  end

  def artists
    songs.map do |artist|
      artist.artist
    end
  end

end
