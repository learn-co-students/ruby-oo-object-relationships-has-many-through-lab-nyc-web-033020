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

  def new_song(title, genre)
    Song.new(title, self, genre)
  end
  #returns songs of artist instance
  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map { |song| song.genre}
  end


end