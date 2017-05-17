# Implement your procedural solution here!
def prime_number_for(num)
  primes = []
  i = 2
  while(primes.length < num)
    count = 0
    (1..Math.sqrt(i).floor).each do |number|
      if(i % number == 0)
        count += 1
      end
    end
    if(count == 1)
      primes.push(i)
    end
    i += 1
  end
  primes.max
end
