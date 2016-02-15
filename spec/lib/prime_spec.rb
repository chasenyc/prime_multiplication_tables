require_relative '../../lib/prime'

describe Prime do
  it "checks whether given number is a prime" do
    expect(Prime.is_prime?(1)).to eq false
    expect(Prime.is_prime?(2)).to eq true 
    expect(Prime.is_prime?(991)).to eq true 
    expect(Prime.is_prime?(12)).to eq false
    expect(Prime.is_prime?(0)).to eq false
  end
end
