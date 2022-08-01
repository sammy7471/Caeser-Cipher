def caeser_cipher(string, key)
    letters = ("a".."z").to_a
    c_letters = ("A".."Z").to_a
    new_string = ""
    string = string.downcase 

    string.each_char do |x|
      if letters.include?(x)
        number = letters.index(x) + key
        if number > 26
          number = number % 26
        end
        new_string += letters[number]
      else 
        new_string += x
      end
    end
    puts new_string
end

caeser_cipher("What a string!", 5)