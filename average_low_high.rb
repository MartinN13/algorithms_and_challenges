def average_low_high(array)
  min = array[0]
  minIndex = 0
  max = array[0]
  maxIndex = 0
  index = 0
  sum = 0

  array.each do |x|
    if x > max
      max = x
      maxIndex = index
    end

    if x < min
      min = x
      minIndex = index
    end

    index += 1
  end

  array.delete_at(minIndex)
  array.delete_at(maxIndex - 1)

  index = 0

  array.each do |x|
    sum += x
    index += 1
  end

  sum / index
end

puts average_low_high([4, 1, 13, 5, 9, 4, 21])

