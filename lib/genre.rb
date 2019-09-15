class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.create
        genre = self.new
        genre.save
    end

    def add_song(song)
        @songs << song
        song.genre = self
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

    def self.create(new_genre)
        saved_genre = new(new_genre)
        saved_genre.save
        saved_genre
    end


    

    

    


end
