# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  songs.any? do |music|
    if user_response == music 
      p music
      puts "Playing #{music}"
    elsif user_response.to_i == (songs.index(music)+1)
      puts "Playing #{music}"
    else
      puts "Invalid input, please try again"
    end
  end
end

play("Phoenix - 1901")

def list(music)
  music.each_with_index do |music,idx|
    puts "#{idx+1}. #{music}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

# def run
# end