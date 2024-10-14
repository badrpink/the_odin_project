def stock_picker(array)
  all_combo = Array.new
  array.each_with_index do |value , day|
    print array[day..-1]
    puts ""
    numbers = (array[day..-1].collect {|number|number if  value <= number}).compact
    min = numbers.min
    max = numbers.max
    all_combo << [min,max]
  end
  print all_combo
end

stock_picker([17,3,6,9,15,8,6,1,10])