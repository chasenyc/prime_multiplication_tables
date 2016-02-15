class Prime

  def self.is_prime?(num)
    (2...num).none? { |factor| num % factor == 0 }
  end
end
