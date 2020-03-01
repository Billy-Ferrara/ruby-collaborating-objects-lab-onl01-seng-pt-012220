class Artist
  attr_accessor :name, :songs, :artist

    @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artist = artist
  end

  def self.all
    @@all << self

  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.find do |artist|
       artist.name == name
        artist.strip
      end
      else
        new_artist = Artist.new(name)
        new_artist
      end
  end

  def save
    @@all < self 
  end

  def print_songs
    @songs.each do |song|
      puts song.name
  end
end
end
