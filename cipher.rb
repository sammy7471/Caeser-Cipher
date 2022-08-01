def caeser_cipher(string, key)
    letters = ("a".."z").to_a
    c_Letters = ("A".."Z").to_a
    new_String = ""
    string = string.downcase 

    string.each_char do |x|
      if letters.include?(x)
        number = letters.index(x) + key
        if number > 26
          number = number % 26
        end
        new_String += letters[number]
      end
    end
    puts new_String
end

caeser_cipher("What a string!", 5)