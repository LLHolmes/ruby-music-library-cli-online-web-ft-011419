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
      #     list_songs
      #   when "list artists"
      #     list_artists
      #   when "list genres"
      #     list_genres
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
    song_array = Song.all.sort_by! { |song| song.name }
    song_array.each_with_index do |song, i|
      puts "#{i+1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    end
  end
  
  def list_artists
    artist_array = Artist.all.sort_by!  { |artist| artist.name }
    artist_array.each_with_index do |artist, i|
      puts "#{i+1}. #{artist.name}"
    end
  end
  
  def list_genres
    genre_array = Genre.all.sort_by! { |genre| genre.name }
    genre_array.each_with_index do |genre, i|
      puts "#{i+1}. #{genre.name}"
    end
  end
  
  def list_songs_by_artist
    puts "Please enter the name of an artist:"
    choice = gets.chomp
    # specific_array = Artist.find_by_name(choice)#.sort_by! { |song| song.name }
    # puts specific_array
    # specific_array.each_with_index do |mx, i|
    #   puts "#{i+1}. #{mx.song.name}"
    # end
  end
  
  def list_songs_by_genre
  end

  def play_song
  end
  
end

# binding.pry