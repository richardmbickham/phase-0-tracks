# Pseudocode
# Prompt user for name
# Split first and last name
# Swap first and last name
# Split consonants and change to next letter
# Split vowels and change to next letter
# Address edge cases, uppercase
# User interface: Until "quit" provide loop
# Store names 
# Iterate through all data entered when user exits

p "What is your first and last name? (ex. Bernie Sanders)"
  full_name = gets.chomp.to_s.downcase

alias_name = full_name.split('')
alias_name = full_name.reverse

vowels = ['a', 'e', 'i', 'o', 'u']
vowel_shift = []

vowels.each do |vowel|
  vowel_shift << vowel.next
    if vowel == "u"
      vowel = "a"
    else
      vowel = vowel.next
    end
  end
  
consonants = ('a'..'z').to_a - vowels
consonant_shift = []

consonants.each do |consonant|
  consonant_shift << consonant.next
    if consonant == "z"
      consonant = "b"
    else
      consonant = consonant.next
    end
  end




#alias_name.join('')

p alias_name
