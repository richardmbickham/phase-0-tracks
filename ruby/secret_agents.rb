# METHOD DECLARATIONS


def encrypt(string)
	key = "abcdefghijklmnopqrstuvwxyz"
  	index = 0
  while index < string.length
    if string[index] == "z"
      string[index] = "a"
    else
      string[index] = string[index].next
    end
    index += 1
  end
  p string
end


def decrypt(string)
  key = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string.length
    if string[index] == "a"
      string[index] = "z"
    else
      string[index] = key[key.index(string[index])-1]
    end
    index += 1
  end
  p string
end

# TEST
# encrypt("abc")- successful
# encrypt("zed")- successful
# decrypt("bcd")- successful
# decrypt("afe")- successful

# decrypt(encrypt("swordfish"))
# The reason the nested methods above work is because we first encrypt the enclosed string, then immediately decrypt the encrypted string, returning the string back to "swordfish".

# DRIVER CODE

# Ask the user whether they would like to decrypt or encrypt a password
puts "Would you like to encrypt or decrypt a password?"
choice = gets.chomp
valid_method = false 

  # Validate choice made by user
  until valid_method 
    if choice == "encrypt" || choice == "decrypt"
      valid_method = true
    else
      puts "Not a valid answer. Please enter only 'encrypt' or 'decrypt'."
      choice = gets.chomp
    end
  end

# Asks for password
puts "Please enter a password."
password = gets.chomp

# Encrypts or decrypts password 
if choice == "encrypt"
  encrypt(password)
else
  decrypt(password)
end

