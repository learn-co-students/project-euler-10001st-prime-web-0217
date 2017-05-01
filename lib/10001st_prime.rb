def is_prime?(number)
  ((2..(Math.sqrt(number)))).each do |i|
    return false if number % i == 0
  end
  return true
end

def prime_number_for(nth_element)
  count = 3
  index = 1

  while true
    index += 1 if is_prime?(count)
    return count if index == nth_element
    count += 2
  end
end
