def caesar_cipher(message, order)
  order = order.remainder(26)
  encrypted_message = ""
  message.each_char do |char|
    if char.ord >= 97 && char.ord <= 122
      if char.ord + order < 97
        encrypted_message << (char.ord + order + 26).chr 
      elsif char.ord + order > 122
        encrypted_message << (char.ord + order - 26).chr
      else
        encrypted_message << (char.ord + order).chr
      end
    else
      encrypted_message << char
    end
  end
  encrypted_message
end