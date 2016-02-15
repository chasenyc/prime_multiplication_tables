require_relative '../../lib/prime'

describe Prime do
  it "first(amount) returns first n prime numbers in an array" do
    expect(Prime.first(2)).to be_a_kind_of(Array)
    expect(Prime.first(2)).to eq [2, 3]
    expect(Prime.first(8)).to eq [2, 3, 5, 7, 11, 13, 17, 19]
    expect(Prime.first(-1)).to eq []
  end


  it "is_prime? checks whether given number is a prime" do
    expect(Prime.is_prime?(1)).to eq false
    expect(Prime.is_prime?(2)).to eq true
    expect(Prime.is_prime?(991)).to eq true
    expect(Prime.is_prime?(12)).to eq false
    expect(Prime.is_prime?(0)).to eq false
  end
end
