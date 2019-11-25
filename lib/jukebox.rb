require 'pry'

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

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
   if choice.to_i > 0 && choice.to_i <= songs.length
     puts "Playing #{songs[choice.to_i - 1]}"
    elsif songs.include?(choice)
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
  end


def exit_jukebox
puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.downcase.strip
  while command != "exit" do
    if command == "help"
      help
      command = gets.strip
    elsif command == "list"
    list(songs)
    command = gets.strip
    elsif command == "play"
    play(songs)
    command = gets.strip
  else
    puts "Invalid command"
    help
    command = gets.strip
end
end
exit_jukebox
end