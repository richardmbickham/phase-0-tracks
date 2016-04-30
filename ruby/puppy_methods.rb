class Puppy

  def initialize
  	puts "Initializing new puppy instance ..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(interger)
  	interger.times do
  		puts "Woof!"
  	end
  end
  
  def roll_over
  	puts "*rolls over*"
  end
  
  def dog_years(human_years)
  	age = human_years.to_i/7
  	return age
  end
  
  def treat_counter(interger)
  	puts "You had #{interger} treats today!"
  end
  
end


#Driver Code
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(30)
puppy.treat_counter(5)

#######################

