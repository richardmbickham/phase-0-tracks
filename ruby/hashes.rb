# PSEUDOCODE: 
# prompt interior designer for client info
# Display a question asking if any of the items need to be changed.
# Give option for no changes needed
# If updated info needed, prompt user for updated info
# Replace original info with new info
# Print latest version of hash after user enters all information; exit program.

 # Create empty hash
 	client = {}

 # Prompt details about the client 
 # Name, age, children, theme, add a few more
 
 	puts "What is your clients' name?"
	client[:name] = gets.chomp

	puts "Please enter the client's age:"
	client[:age] = gets.chomp.to_i

	puts "How many children does the client have?"
	client[:children] = gets.chomp.to_i
 
	puts "What is the proposed decor theme?"
	client[:theme] = gets.chomp

	puts "Does the client have any pets?"
	client[:pets] = gets.chomp
	
	puts "What is the clients' favorite color?"
	client[:color] = gets.chomp


 # Give user opportunity to update info; if none, skip
 
 puts "Would you like to update any information? Please respond with one of the following: 'name', 'age', 'children', 'decor', 'pets', 'color' or 'none'."
 
 	update_hash = gets.chomp
 	new_info = update_hash.to_sym

 if new_info == :name
	puts "What is the clients' corrected name?"
	client[new_info] = gets.chomp
elsif new_info == :age
	puts "What is the clients' corrected age?"
	client[new_info] = gets.chomp.to_i
elsif new_info == :children
	puts "How many children does the client have?"
	client[new_info] = gets.chomp.to_i
elsif new_info == :theme
	puts "What decor style would the client like?"
	client[new_info] = gets.chomp
elsif new_info == :pets
	puts "Does the client have any pets?"
	client[new_info] = gets.chomp
elsif new_info == :color
	puts "What is the client's favorite color?"
	client[new_info] = gets.chomp
elsif new_info == :none
	puts "Thanks! Have a Romy and Michelle day."
else puts "Not a valid entry."
end

puts client