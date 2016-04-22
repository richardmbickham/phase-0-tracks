def build_array(x, y, z)
    new_array = [x, y, z]
end

def add_to_array(arr, item)
    arr << item
end

party_bag = []
print party_bag

party_bag = ["booze" , "dj" , "cups" , "napkins" , "ice"]
print party_bag

party_bag.delete_at(2)
print party_bag

party_bag.insert(2,"disco ball")
print party_bag

party_bag.shift
print party_bag

if party_bag.include? "ice"
puts "Yes we remembered to get the ice"
end

plants = ["flower" , "succulent" , "palm"]

shopping_bag = party_bag + plants
p shopping_bag

=> ["dj", "disco ball", "napkins", "ice", "flower", "succulent", "palm"]

p build_array("Jane" , "Jim" , "John")
p add_to_array(1, 2)
