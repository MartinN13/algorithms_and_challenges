def bubblesort(array)
  return array if array.length < 2

  swapped = true
  
  while swapped do
    swapped = false
    (array.length - 1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end

  array
end

puts bubblesort([10, 5, 2, 3, 22, 91, 11, 3, 94, 37, 210])

