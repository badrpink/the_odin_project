def caesar_cipher(string,number)
  result = ""
  str_down_case = ""
  string.each_char.with_index {|char, i|
  if ('a'..'z').to_a.include?(char)
   result << ((char.ord - "a".ord + number) % 26 + "a".ord).chr
  elsif ('A'..'Z').to_a.include?(char)
    result << ((char.ord - "A".ord + number) % 26 + "A".ord).chr
  else
    result << char
  end
  }
  return result
end
