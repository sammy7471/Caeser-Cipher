def caeser_cipher(string, key)
    string = string.downcase
    str = string.each_byte {|s| puts s - key}   
end

caeser_cipher("Word", 5)