class Artist 
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select {|song| song.artist == self} 
  end
  #Song.all holds all songs
  #select filters by condition, which says look for songs by artist given

  def add_song(song)
    song.artist = self
  end
  #assigns artist to song
  
  def add_song_by_name(song_name)
    song = Song.new(song_name) #create new song with name
    song.artist = self
  end
  
  def self.song_count
    return Song.all.count #counts all songs across artists
  end

end