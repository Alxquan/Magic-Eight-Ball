require "pry"

response = [
"It is certain",
"It is decidedly so",
"Without a doubt",
"Yes, definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good",
"Yes",
"Signs point to yes",
"Reply hazy try again",
"Ask again later",
"Better not tell you now",
"Cannot predict now",
"Concentrate and ask again",
"Don't count on it",
"My reply is no",
"My sources say no",
"Outlook not so good",
"Very doubtful",
]

response_clone = response.clone
while true
  puts "I am a magic eight ball. Ask me any question or type quit."
  user_input = gets.chomp

  if user_input.downcase == "quit"
    puts "Thanks for using Magic Eight Ball!"
    exit 0
  elsif
    user_input == "reset_answers"
    response_clone = response
    puts response
  elsif
    user_input == "print_answers"
    puts response_clone
  elsif user_input == "add_answers"
    puts "What would you like to add?"
    new_arr_input = gets.chomp 
      if response.include? new_arr_input
        puts "NOPE"
      else 
        puts response_clone << new_arr_input
      end
  else
    puts response.shuffle[0]

  end
end


