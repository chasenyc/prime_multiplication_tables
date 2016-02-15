class Prime

  def self.first(amount)
    primes = []

    i = 2
    until primes.size >= amount
      primes << i if is_prime?(i)
      i += 1
    end

    primes
  end

  def self.is_prime?(num)
    return false if num < 2
    (2...num).none? { |factor| num % factor == 0 }
  end
  
end
