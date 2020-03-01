class Artist
  attr_accessor :name, :songs, :artist

    @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find do |artist|
       artist.name == name
        artist
      else
        new_artist = Artist.new(name)
        new_artist
      end
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
  end
end
end
