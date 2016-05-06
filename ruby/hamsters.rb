puts "What is your hamster's name?"
	hamster_name = gets.chomp.to_s

puts "How squeaky is your hamster? Choose a noise level 1-10, 10 being the highest."
	hamster_volume = gets.chomp.to_i

puts "What color is your hamster?"
	fur_color = gets.chomp.to_s

puts "What is the estimated age of your hamster? If unknown, leave blank."
	hamster_age = gets.chomp.to_i
	
	if hamster_age == ""	
		hamster_age = nil
	end

puts "Is this hamster a good candidate for adoption? y/n"
	adoption = gets.chomp
	
	if adoption != "y"
	puts "We are sorry to hear that. Unfortunately at this time we will unlikely accept naughty hamsters, but will still review your application."
	else puts "Thank you for submitting your hamster adoption application! We are confident that we will be able to find #{hamster_name} a loving home. "
	end

puts "Please review the following information about your hamster: #{hamster_name} is #{hamster_age} years old, #{fur_color} and has a noise level of #{hamster_volume} based on a scale of 1-10. Is this information correct? (y/n)"
	confirmation = gets.chomp
	if confirmation == "y"
		puts "Please bring #{hamster_name} to our awesome hamster orphanage for final evaluation during normal business hours."
	else puts "Please review your application before submitting."
	end