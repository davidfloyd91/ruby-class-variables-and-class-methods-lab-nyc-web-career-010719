class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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

  def self.counter(target)
    count_hash = {}
    target.each do | item |
      if !count_hash.include?(item)
        count_hash[item] = 1
      else
        count_hash[item] += 1
      end
    end
    count_hash
  end

def self.artist_count
  self.counter(@@artists)
end

def self.genre_count
  self.counter(@@genres)
end

end
