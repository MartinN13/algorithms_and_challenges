def quicksort(array)
  return array if array.size < 2

  pivot = array[0]
  array.delete_at(0)

  less = []
  greater = []

  array.each do |x|
    if x <= pivot
      less << x
    else
    greater << x
    end
  end
  
  sorted_array = []
  sorted_array << quicksort(less)
  sorted_array << pivot
  sorted_array << quicksort(greater)
  
  sorted_array.flatten!
end

puts quicksort([10, 5, 2, 3, 22, 91, 11, 3, 94, 37, 210])

