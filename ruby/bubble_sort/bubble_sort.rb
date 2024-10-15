def bubble_sort(array)
  result = array.dup
  result.each do
    result.each_with_index do |value , j|
      if result[j+1] && result[j+1] < result[j]
        swap = result[j]
        result[j] = result[j+1]
        result[j+1] = swap
      end
    end
  end
  return result
end