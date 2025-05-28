array1 = [1, 2, 3]
array2 = [4, 5, 6]

concat_array = []

i=0
while i<array1.length
  concat_array[i] = array1[i]
  i += 1
end

j=0
while j<array2.length
  concat_array[j+i] = array2[j]
  j += 1
end

puts "Joined Array: #{concat_array}"
