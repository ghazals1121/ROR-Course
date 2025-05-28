array = [1, 'a', 3, nil, 5.5, '10']

doubled = array.map do |x|
  if x.is_a?(Numeric)
    x * 2
  else
    x
  end
end

puts doubled.inspect
