def get_value_and_its_index(array, day,compare)
  result = [array[0],0 + day]
  array.each_with_index do |value, index|
    if compare == :max && (result[0] < value)
      result= [value,index+day]
    elsif compare == :min && (result[0]> value)
      result = [value,index+day]
    end
  end
  return result
end
def calcul_profit_for_combos(combo)
  combo.each_with_index do |value,index|
    combo[index] << value[1][0] - value[0][0]
  end
end
def stock_picker(array)
  result = [0,0]
  all_combo = Array.new
  array.each_with_index do |value , day|
    min = get_value_and_its_index(array[0..day],0,:min)
    max = get_value_and_its_index(array[day..-1],day,:max)
    all_combo << [min,max]
  end
  calcul_profit_for_combos(all_combo)
  max = all_combo[0][2]
  all_combo.each do |value|
    if(max <= value[2])
      result = [value[0][1],value[1][1]]
      max = value[2]
    end
  end
end
