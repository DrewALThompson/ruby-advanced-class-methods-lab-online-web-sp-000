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
    new_song = self.name
    song_name.name = new_song
    song_name.name
  end
    
end
