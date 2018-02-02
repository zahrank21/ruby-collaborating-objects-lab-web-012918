class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    all_artist_names = @@all.map do |artist|
      artist.name

    end

    if all_artist_names.include?(artist_name)
      @@all.find{|artist| artist.name == artist_name}
    else
      Artist.new(artist_name)

    end
  end

  def print_songs
    song_names = @songs.map{|song|song.name}
    puts song_names
  end

end
