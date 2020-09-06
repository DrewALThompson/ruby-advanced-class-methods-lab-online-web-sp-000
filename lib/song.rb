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
    song = self.new
    song.name = song_name
    song
  end
    
  def self.create_by_name(song_name)
    song = self.new
    @@all << song 
    song.name = song_name
    song
  end
  
  def self.find_by_name(song_name)
    self.all.find {|p| p.name == song_name }
  end
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end
  
  def self.alphabetical
    @@all.sort_by {|song| song.name }
  end
  
  def self.new_from_filename(filename)
    song = self.new
    artist_and_song = filename.split(" - ")[1].split(".")[0]
    song = artist_and_song.split(" - ")[1]
    song

  end
  
  def self.create_from_filename(song)
  end 
  
  def self.destroy_all
    self.all.clear
  end
  
end
