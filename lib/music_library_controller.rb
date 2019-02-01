# require "pry"
# require_relative "./MusicImporter.rb"
# require_relative "./Artists.rb"
# require_relative "./Genre.rb"
# require_relative "./Song.rb"

class MusicLibraryController
  
  def initialize(path = ("./db/mp3s"))
    mx_object = MusicImporter.new(path)
    mx_object.import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    loop do
      puts "What would you like to do?"
      command = gets.chomp
      case command
      #   when "list songs"
      #     Songs.all.name
      #   when "list artists"
      #     Artist.all.name
      #   when "list genres"
      #     Genre.all.name
      #   when "list artist"
      #     puts "Which artist would you like?"
      #     artist = gets.chomp
      #     Artist.find_by_name(artist)
      #   when "list genre"
      #     puts "Which genre would you like?"
      #     genre = gets.chomp
      #     Genre.find_by_name(genre)
      #   when "play song"
      #     puts "Which song would you like?"
      #     song = gets.chomp
      #     puts "Playing song."
        when "exit"
          # puts "Goodbye!"
          break
      end
    end
  end
  
  def list_songs
    song_array = Song.all.collect { |song| song.name.sort }
    puts song_arry
     # "1. Thundercat - ForLove I Come - dance"
  end
  
  def list_artists
  end
  
  def list_genres
  end
  
  def list_songs_by_artist
  end
  
  def list_songs_by_genre
  end

  def play_song
  end
  
end

# binding.pry