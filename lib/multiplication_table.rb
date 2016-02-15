require_relative 'prime'

class MultiplicationTable

  attr_reader :numbers, :table

  def initialize(size)
    size ||= 10
    @numbers = Prime.first(size)
    @table = Array.new(numbers.length + 1) { Array.new(numbers.length, nil) }
  end

  def generate_table_edges
    table[0] = [" "] + numbers
    numbers.each_with_index do |num, idx|
      table[(idx + 1)][0] = num
    end
  end

  def render_cell(num)
    num.to_s.center(cell_width)
  end

  private
  def cell_width
    (numbers.max ** 2).to_s.length + 2
  end
end
