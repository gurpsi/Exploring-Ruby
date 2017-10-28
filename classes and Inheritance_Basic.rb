#Author Gurpreet Singh

class Song1 #class A
  def initialize(name,artist,duration)
    @name=name
    @artist=artist
    @duration=duration
  end

#Changing the definition of to_s to give the contents and not object code
  def to_s # Now it dosen't throw the object code
    "Song: #@name  #@artist (#@duration)" #[#@lyrics]"
  end
end

#Class B inheriting class A
class Karokie < Song1 #“< Song1 on the class definition line tells Ruby that a Karaoke is a subclass of Song1, i.e song1 is super class
  def initialize(name,artist,duration,lyrics)
    super(name,artist,duration)
    @lyrics=lyrics
  end

  #Here I have decoupled the definition of to_s as the lyrics is part of karokie
  def to_s
    super+" [#@lyrics]"
  end
end

#Note: A Ruby class has only one direct parent, so Ruby is a single inheritance language.
#Class C inheriting class B
class Instumental < Karokie
  def initialize(name,artist,duration,lyrics,music_type)
    super(name,artist,duration,lyrics)
    @music_type=music_type
  end

  #Here I have decoupled the definition of to_s as music is part of instumental
  def to_s
    super+" [#@music_type]"
  end
end

# Main starts here:

a= Song1.new("Bicylops", "Fleck", 260)
b= a.to_s
puts "With .to_s: \t #{b}"
c= a.inspect
puts "With inspect: \t #{c}"
d= Karokie.new('My Way','Sinatra',225,'And now the')
e=d.to_s # First it looks in class B if the method is not present there then moves to parent ans so on.
puts "Calling class B: Karokie inheriting class A: Song1: \t #{e}"
f= Instumental.new('All of me', 'Chain Smokers',300, 'All of me loves all of you','Soft')
g=f.to_s
puts "Calling class C: Instumental inheriting class B: Karokie: \t #{f.to_s}"





# Run in RubyMine---------------> OUTPUT

# With .to_s:    Song: Bicylops  Fleck (260)
# With inspect:    #<Song1:0x007fecce03f378 @name="Bicylops", @artist="Fleck", @duration=260>
# calling class B: Karokie inheriting class A: Song1:    Song: My Way  Sinatra (225) [And now the]
# Calling class C: Instumental inheriting class B: Karokie:    Song: All of me  Chain Smokers (300) [All of me loves all of you] [Soft]



