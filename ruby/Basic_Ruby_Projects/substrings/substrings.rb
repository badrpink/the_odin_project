def substrings(string, dictionary)
  result = {}
  temp_count = 0
  while !string.empty?
    temp_count = dictionary.count(string)
    if temp_count != 0
      result[string] = temp_count
    end
    string = string[1..-1]
  end
  return result
end
