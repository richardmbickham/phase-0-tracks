puts "How many employees would you like to process?"
	employees = gets.chomp.to_i
	until employees == 0
	employees = employees - 1

puts "What is your name?"
	employee_name = gets.chomp

puts "How old are you?"
	employee_age = gets.chomp.to_i

puts "In what year were you born?"
	birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic = gets.chomp.downcase
	
	unless garlic == "y"
		garlic = false
	else garlic = true
	end

puts "Would you like to enroll in the company's health insurance plan? (y/n)"
	insurance = gets.chomp
	
	unless insurance == "y"
		insurance = false
	else insurance = true
	end

unless employee_age == (2016 - birth_year)
	actual_age = true
else actual_age = false
end		

if employee_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
elsif actual_age && (garlic || insurance)
	puts "Probably not a vampire."
elsif !actual_age && (!garlic || !insurance) 
	puts "Probably a vampire."
elsif !actual_age && (!garlic && !insurance) 
	puts "Almost certainly a vampire."
else 
	puts "Results are inconclusive."
end

allergy = ""
  until allergy == "done" || allergy == "sunshine"
  	puts "Do you have allergies? If so, please list individually and then press 'Enter.' If not, or have finished listing, please type 'done' and then press 'Enter.'"
  allergy = gets.chomp.downcase

        if allergy == "sunshine"
            puts "Probably a vampire."
          elsif allergy == "done"
            puts "Thank you. We have made note of this information in your employee profile."
          else
            puts "#{allergy} has been added to your profile. Please type 'done' when finished."
        end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end