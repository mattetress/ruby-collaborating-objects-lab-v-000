class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir["#{path}/*.mp3"]
    filenames = []
    file_list.each do |file|
      parts = file.split("/")
      filenames << parts[parts.size - 1]
    end
    filenames
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end


end
