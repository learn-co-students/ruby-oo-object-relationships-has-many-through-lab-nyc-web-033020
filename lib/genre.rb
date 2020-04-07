class Genre

    attr_reader :name    
    @@ all = []
    
        def initialize(name)
            @name = name
            @@all << self
        end
    
        def self.all
            @@all
        end
        def songs
            Songs.all.select do |songs|
                songs.genre == self
            end
        end
    
        def artists
            self.songs.map do |songs|
                songs.artists
            end
        end
    end
    