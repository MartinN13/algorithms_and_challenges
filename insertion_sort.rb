def insertionsort(array)
  return array if array.length < 2

  sortedArray = [array[0]]
  array.delete_at(0)

  for i in array
    index = 0

    while index < sortedArray.length
      if i <= sortedArray[index]
        sortedArray.insert(index, i)
        break
      elsif index == sortedArray.length - 1
        sortedArray.insert(index + 1, i)
        break
      end

      index += 1;
    end
  end

  sortedArray
end

puts insertionsort([10, 5, 2, 3, 22, 91, 11, 3, 94, 37, 210])

