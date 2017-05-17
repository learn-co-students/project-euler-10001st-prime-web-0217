# Implement your object-oriented solution here!
class Prime
  def initialize(num)
    @num = num
  end

  def number
    primes = []
    i = 2
    while(primes.length < @num)
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
end
