# Pseudocode
# define a Santa class
# speak method that will print "Ho, ho, ho! Haaaappy holidays!"
# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
# An initialize method that prints "Initializing Santa instance ...".


class Santa
  attr_reader :gender, :ethnicity, :reindeer_ranking, :age
  attr_accessor :gender, :ethnicity, :reindeer_ranking, :age
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
      "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a tasty #{cookie_type}"
  end
end

#Driver Code
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies(snickerdoodle)
