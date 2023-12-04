def extract_info(input)
  # Define the regular expression pattern
  pattern = /\[(.*?),(.*?),(.*?)\]/

  # Match the input against the pattern
  match_data = input.match(pattern)

  if match_data
    sender = match_data[1].strip
    receiver = match_data[2].strip
    flags = match_data[3].strip

    puts "Sender: #{sender}"
    puts "Receiver: #{receiver}"
    puts "Flags: #{flags}"
  else
    puts "Invalid input format. Please provide input in the format '[SENDER],[RECEIVER],[FLAGS]'"
  end
end

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: ruby extract_info.rb <input>"
else
  # Get the argument from the command line
  user_input = ARGV[0]

  # Call the method to extract information
  extract_info(user_input)
end
