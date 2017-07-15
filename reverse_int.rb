def reverse_int(number)
  reverseNumber = 0

  while number > 0
    reverseNumber = reverseNumber * 10 + number % 10
    number = number / 10
  end

  reverseNumber
end

puts reverse_int(1234567890)
