def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low < high
    mid = low + high
    guess = list[mid]

    if guess == item
      return mid
    elsif guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
end

mylist = [1, 5, 9, 18, 34, 37, 48, 69, 80, 99]

puts binary_search(mylist, 69)

