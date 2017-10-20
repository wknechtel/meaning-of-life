# Begin by putting the english alphabet into an array. This establishes letter
# positions we can use later with find_index(). Also, ready the dictionary.
alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
dictionary = File.open("words_alpha.txt")

# Iterate over the dictionary words
while (word = dictionary.gets) do
    word.strip!
    word_sum = 0
    # Calculate the summed index value of each word, keeping in mind that the
    # array is zero-indexed
    word.downcase.split('').each do |character|
        character_value = alphabet.find_index(character) + 1
        word_sum += character_value
    end
    # Forty two?
    if word_sum == 42
        puts("#{word}\r\n")
    end
end
