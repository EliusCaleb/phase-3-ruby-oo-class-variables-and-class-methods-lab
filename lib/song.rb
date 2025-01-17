require 'pry'
class Song 

    attr_accessor :name, :artist, :genre
    @@count= 0
    @@artists = []
    @@genres = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists <<  artist
        @@genres <<  genre
    end
    
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
        genre_count = {}
        @@genres.tally.each do |genre,count|
            genre_count[genre] = count
        end
        genre_count
    end
        
    def self.artist_count
        artist_count = {}
        @@artists.tally.each{|artist,count| artist_count[artist] = count}
        
        artist_count
    end

end
    