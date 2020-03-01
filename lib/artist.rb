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

  def self.find_or_create_by_name(name)
    if @@all.find do |artist|
       artist.name == name
        artist
      end
      else
        new_artist = Artist.new(name)
        new_artist
        @@all << new_artist
      end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
  end
end
end
