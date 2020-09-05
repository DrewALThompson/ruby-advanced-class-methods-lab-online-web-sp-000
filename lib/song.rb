class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new 
    @@all << song
    song
  end
    
  def self.new_by_name(song_name)
    song_name = self.name
    song.name = song_name
    song.name
  end
    
end
