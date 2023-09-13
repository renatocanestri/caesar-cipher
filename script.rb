def caesar_cipher(string, shift_factor=0)
  new_string = ""
  string.each_char do |element|
    if element.match(/[A-Za-z]/)
      if element.match(/[A-Z]/)
        element_code = element.ord - "A".ord
        new_element = (((element_code + shift_factor) % 26) + "A".ord).chr
      else 
        element_code = element.ord - "a".ord
        new_element = (((element_code + shift_factor) % 26) + "a".ord).chr
      end
      new_string += new_element
    else
      new_string += element
    end
  end
  new_string
end

puts caesar_cipher("What a string!", 5)




