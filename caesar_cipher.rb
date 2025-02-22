def caesar_cipher(message, order)
  order = order % 26
  encrypted_message = ""
  message.each_char do |char|
    if char.ord >= 97 && char.ord <= 122
      if char.ord + order > 122
        encrypted_message << (char.ord + order - 26).chr
      else
        encrypted_message << (char.ord + order).chr
      end
    elsif char.ord >= 65 && char.ord <= 90
      if char.ord + order > 90
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