class Song 

    attr_accessor :name
    attr_reader :artist

    @@all = []
    
    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist = artist if artist
        @genre = genre
    end

    def artist=(artist)
         @artist = artist
         artist.add_song(self)
    end

    def genre=(genre)
        @genre = genre
        genre.add_song(self)
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

    def self.create(new_song)
    saved_song = new(new_song)
    saved_song.save
    saved_song
    end

    def genre
        @genre
    end


end