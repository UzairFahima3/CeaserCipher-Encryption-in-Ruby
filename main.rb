# puts "Hello, World!"

class CeaserCipher
  def initialize()
    @hash = {
            'a' => 1,
            'b' => 2,
            'c' => 3,
            'd' => 4,
            'e' => 5,
            'f' => 6,
            'g' => 7,
            'h' => 8,
            'i' => 9,
            'j' => 10,
            'k' => 11,
            'l' => 12,
            'm' => 13,
            'n' => 14,
            'o' => 15,
            'p' => 16,
            'q' => 17,
            'r' => 18,
            's' => 19,
            't' => 20,
            'u' => 21,
            'v' => 22,
            'w' => 23,
            'x' => 24,
            'y' => 25,
            'z' => 26      
    }
  end

  def encrypt(string, diff)
    # puts "Encrypt COde Runs"
    puts "Original: " + string
    encrypt = ""
    string.split("").each { | i |
      if i == " "
        encrypt = encrypt + i
      end
      
      if not @hash.keys.include?(i.downcase)
        next
      end 
      
      if i === i.capitalize
        new_i = i.downcase
        new_str_value = encryption(new_i, diff)
        new_key = @hash.key(new_str_value) 
        new_key = new_key.upcase
        encrypt = encrypt + new_key
      else
        new_str_value = encryption(i, diff)
        new_key = @hash.key(new_str_value)
        # puts new_key
         encrypt = encrypt + new_key
          
      end
    }
    return encrypt
  end

  def encryption(char, diff)
    char_value = @hash[char]
    char_value = char_value + diff
    if char_value < 26
      return char_value
    else
      char_value = char_value - 26
      return char_value
    end
  end
  
  end


code = CeaserCipher.new()
puts "Encrypted: " + code.encrypt("What a string", 5)

        