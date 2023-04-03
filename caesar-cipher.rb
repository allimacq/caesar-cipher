def caesar_cipher(str, shift)
    #alphabet and input string to arrays
    alpha = ("a".."z").to_a
    letters = str.split("")
  
    ##getting the shifted index if the element isnt a blank space
    letters_shifted_index = letters.map do |letter|
      if letter != " "
        #will only match downcase. use modular math to keep below alpha.length
         (alpha.find_index(letter.downcase).to_i + shift) % alpha.length
      else
        #making the space character have this value
        alpha.length + 1
      end
    end
    
    #using the shifted index to get the new letters
    caesar = letters_shifted_index.map do |index|
      #inserting space if true, otherwise the cipher
       index == alpha.length + 1 ? " " : alpha[index]
    end
    
     return caesar.join("")
  end