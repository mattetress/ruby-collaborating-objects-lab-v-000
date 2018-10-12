class Artist
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect {|a| a.name == artist_name} || self.new(artist_name)
  end




end
