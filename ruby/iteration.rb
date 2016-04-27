# method that takes a block

def hobbies
	puts "What would you like to do today?"
	5.times {yield("brunch","park")}
end

hobbies { |hobby_1 , hobby_2| puts "Let's #{hobby_1} and go to the #{hobby_2}!" }

# Release 1:

trees = ["palm" , "oak" , "pine" , "coconut"]
backward_trees = []

# original data
p trees

# iterate through array with .each
trees.each do |tree_types|
	backward_trees << tree_types.reverse
end

p trees
p backward_trees

# iterate through array with .map

trees.map! do |tree_types|
	puts tree_types
	tree_types.reverse
end 

p trees
##########################

trees = {
	1 => "palm",
	2 => "oak",
	3 => "pine",
	4 => "coconut"
	}

p trees

# iterate through hash with .each

trees.each do |tree_order, tree|
	puts "Tree number #{tree_order} in the forest is a #{tree} tree."
end

# Release 2:

array = [10, 15, 20, 25, 30, 35]

hash = {
  10 => "ten",
  15 => "fifteen",
  20 => "twenty",
  25 => "twenty-five",
  30 => "thirty",
  35 => "thirty-five",
	}



p array.delete_if {|options| options < 20 }
p hash.delete_if {|digit, word| digit > 15}

p array.keep_if { |options| options == 35 } 
p hash.keep_if {|digit, word| digit < 30}

 p array.select {|options| options.odd?}
 p hash.select {|digit, word| digit.odd?}


