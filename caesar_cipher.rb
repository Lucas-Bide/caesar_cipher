def caesar_cipher msg, key
    chars = msg.split("")
    key = key % 26
    chars.size.times do |i|
        if chars[i].downcase.between?("a", "z")
            is_upper = chars[i].between?("A", "Z")
            encryption = (chars[i].downcase.ord + key) % 123
            encryption = encryption < 65 ? encryption + 65 : encryption
            encryption = encryption.chr
            if is_upper
                encryption.upcase!
            end
            chars[i] = encryption
        end
    end
    chars.join
end

puts caesar_cipher("What a string!", 5)



    