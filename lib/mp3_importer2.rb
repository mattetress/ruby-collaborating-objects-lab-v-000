class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir["#{path}""/*.mp3"]
    
  end

  def import

  end


end
