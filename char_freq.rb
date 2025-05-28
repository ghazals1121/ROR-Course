chars = ['a', 'b', 'a', 'c', 'b', 'a', 'd']

frequency = Hash.new(0)

chars.each do |char|
  frequency[char] += 1
end

frequency.each do |char, count|
  puts "#{char}: #{count}"
end
