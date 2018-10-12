class Artist
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    self.save
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect {|a| a.name == artist_name} || self.new(artist_name)
  end




end
