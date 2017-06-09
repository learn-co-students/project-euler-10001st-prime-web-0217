def prime?(number)
  if number <= 1 || (number.to_f != number.to_i)
    return false
  elsif number == 2 || number == 3
    return true
  else
  	array = (2..Math.sqrt(number)).to_a

    array.each do |divisor|
      for divisor in (2...number)
      ## Work on how to remove this, all odd multiples of 3 evaluate as prime without this
        if number.to_f % divisor.to_f == 0
          return false
        end
      end
  		return true
    end
  end
end

def prime_number_for(nth_element)
  primes = []
  counter = 2

  until primes.length == nth_element
    if prime?(counter) == true
      primes << counter
    end
    counter += 1
    puts counter
  end
  return primes[-1]
end
