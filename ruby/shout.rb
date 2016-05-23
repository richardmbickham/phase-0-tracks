module Shout
  
  def angry_shout(words)
    puts "#{words}"
  end

  def excited_shout(words)
    puts "#{words}"
  end

end  

class Dog
  include Shout
end

class Boyfriend
  include Shout
end

dog = Dog.new
dog.angry_shout("Stop eating the trash!")
dog.excited_shout("Go get it!")

puts "_________________________"

boyfriend = Boyfriend.new
boyfriend.angry_shout("Get off your ass!")
boyfriend.excited_shout("Staaaaap, that tickles!")

# structure needs some more work
