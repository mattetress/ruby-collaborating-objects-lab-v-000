class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect {|a| a.name == artist_name} || self.new(artist_name)
  end

  def add_song(song)
    




end
