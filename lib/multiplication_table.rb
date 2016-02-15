require_relative 'prime'

class MultiplicationTable

  attr_reader :numbers, :table

  def initialize(size)
    size ||= 10
    @numbers = Prime.first(size)
    @table = Array.new(numbers.length + 1) { Array.new(numbers.length, nil) }
  end

  

  def render_cell(num)
    num.to_s.center(cell_width)
  end

  private
  def cell_width
    (numbers.max ** 2).to_s.length + 2
  end
end
