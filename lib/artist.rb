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
end