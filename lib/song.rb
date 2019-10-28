class Song 
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all #accesses class variable
    @@all
  end

 def artist_name
    if @artist == nil
      return nil
    else
      return @artist.name
    end
  end

end