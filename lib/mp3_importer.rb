class MP3Importer
  attr_accessor :path


  def initialize(path)
    @path = path
  end

  def files
    files = Dir[path + "/**/*.mp3"]
    @files = files.map do |song_with_path|
      song_with_path[("./spec/fixtures/mp3s/").length..-1]
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
