def encrypt(string)
    index = 0
  while index < string.length
    if string[index] == "z"
      string[index] = "a"
    elsif string[index] == " "
      string[index] = " "
    else
      string[index] = string[index].next
    end
    index += 1
  end
  p string
end

# encrypt("zed tramp")

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = 0
  while i < string.length
    if ("b".."z").include? string[i]
      # string[i] = alphabet[alphabet.index(string[i]) - 1]
      index_in_alphabet = alphabet.index(string[i])
      index_in_alphabet -= 1
      string[i] = alphabet[index_in_alphabet]
    elsif string[i] == "a"
      string[i] = "z"
    end
    i += 1
  end
  string
end

#decrypt("afe usbnq")

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

