class Prime

  def self.is_prime?(num)
    return false if num < 2
    (2...num).none? { |factor| num % factor == 0 }
  end
end
