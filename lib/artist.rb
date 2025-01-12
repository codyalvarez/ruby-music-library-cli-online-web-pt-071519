class Artist

    attr_accessor :name, :songs

    @@all = []
    
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self unless song.artist
        @songs << song unless songs.include?(song)
    end

    def songs
        @songs
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(new_artist)
        saved_artist = new(new_artist)
        saved_artist.save
        saved_artist
    end

end