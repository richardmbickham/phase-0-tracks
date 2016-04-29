# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # divide string into an array; split at the space
  # create empty hash
  # iterate through array
    # take each element in array and make a key value pair in hash
    # set default quantity to 1 for value

# print the list to the console 
# output: use hash; program list items with associated quantities
# output: a hash item : quantity {"carrots" => 1, "apples" => 1...}


def create_list(items)
  array_of_items = items.split(' ')
  list_hash = {}
  array_of_items.each do |item|
    list_hash[item] = 1
  end
  return list_hash
  
end

p create_list("carrots apples cereal pizza")