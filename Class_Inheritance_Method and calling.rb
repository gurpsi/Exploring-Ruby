class Song1 #class A
  def initialize(name,artist,duration)
    @name=name
    @artist=artist
    @duration=duration
  end
  attr_reader :name, :artist, :duration #attr_reader creates these accessor methods so we can access the attributes

#Changing the definition of to_s to give the contents and not object code
  def to_s # Now it dosen't throw the object code #can I have 2 definition of same method like default and the defined one
    "Song: #@name  #@artist (#@duration)" #[#@lyrics]"
  end

  def play_song
    puts " #{@name} to be do be dooooo"
  end

  def show_lyrics
    if @name=="Mi Gente"
      then puts "#{@name}: Si el ritmo te lleva a mover la cabeza ya empezamos como es Mi música no discrimina a nadie así que vamos a romper Toda mi gente se mueve Mira el ritmo cómo los tiene Hago música que entretiene El mundo nos quiere, nos quiere Y me quiere a mí."
    elsif @name=='Ahora Dice'
      then puts "#{@name}: Baby Chris Jeday (Chris Jeday) Austin baby J Balvin man Ozuna baby, (Ozuna) No quiere saber na' de mí Ay, dime qué fue lo que yo hice mal Te pusieron en contra de mí Al que fue, no se lo voy a perdonar"
    else
      puts "#{@name}: Lyrics not available."
    end
  end

end

#Class B inheriting class A
class Karokie < Song1 #“< Song1 on the class definition line tells Ruby that a KaraokeSong is a subclass of Song1, i.e song1 is super class
  def initialize(name,artist,duration,lyrics)
    super(name,artist,duration)
    @lyrics=lyrics
  end

  #Here I have decoupled the definition of to_s as the lyrics is part of karokie
  def to_s
    super+" [#@lyrics]"
  end

  def language
    if @name=="Mi Gente" || @name== 'Ahora Dice'
    then puts "#{@name}: Spanish Song"
    else
      puts "#{@name}: Language not available."
    end
  end
end

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

  def music_category
    if @name=="Mi Gente" || @name== 'Ahora Dice'
    then puts "#{@name}: Jazz"
    elsif @name=="All of me"
      puts "#{@name}: is a Soft music"
    end
  end
end



puts "Accessing the attributes of Class:A i.e of Song1"
atr = Song1.new("SONG NAME", "ARTIST NAME", 'DURATION')
puts atr.artist
puts atr.name
puts atr.duration

a= Song1.new("Mi Gente", "J Balvin & Willy William", 305)
b= a.to_s
a.play_song
a.show_lyrics
puts "With .to_s: \t #{b}"
# a.language #Will Display (NoMethodError) undefined method `language'

d= Karokie.new('Ahora Dice','Chris Jeday',225,'And now the')
e=d.to_s # First it looks in class B if the method is not present there then moves to parent ans so on.
puts "Calling class B: Karokie inheriting class A: Song1: \t #{e}"
d.play_song #Accessing the parent method from class A: song1
d.show_lyrics #Accessing the parent method from class A: song1
d.language
#d.music_category #Will Display (NoMethodError) in `<top (required)>': undefined method `music_category'

f= Instumental.new('All of me', 'Chain Smokers',300, 'All of me loves all of you','Soft')
g=f.to_s
puts "Calling class C: Instumental inheriting class B: Karokie: \t #{f.to_s}"
f.play_song
f.show_lyrics
f.language
f.music_category



# OUTPUT in RUBYMINE----------------------->
# Accessing the attributes of Class:A i.e of Song1
# ARTIST NAME
# SONG NAME
# DURATION
#  Mi Gente to be do be dooooo
# Mi Gente: Si el ritmo te lleva a mover la cabeza ya empezamos como es Mi música no discrimina a nadie así que vamos a romper Toda mi gente se mueve Mira el ritmo cómo los tiene Hago música que entretiene El mundo nos quiere, nos quiere Y me quiere a mí.
# With .to_s:    Song: Mi Gente  J Balvin & Willy William (305)
# Calling class B: Karokie inheriting class A: Song1:    Song: Ahora Dice  Chris Jeday (225) [And now the]
#  Ahora Dice to be do be dooooo
# Ahora Dice: Baby Chris Jeday (Chris Jeday) Austin baby J Balvin man Ozuna baby, (Ozuna) No quiere saber na' de mí Ay, dime qué fue lo que yo hice mal Te pusieron en contra de mí Al que fue, no se lo voy a perdonar
# Ahora Dice: Spanish Song
# Calling class C: Instumental inheriting class B: Karokie:    Song: All of me  Chain Smokers (300) [All of me loves all of you] [Soft]
#  All of me to be do be dooooo
# All of me: Lyrics not available.
# All of me: Language not available.
# All of me: is a Soft music

