require_relative 'prime'

class MultiplicationTable

  attr_reader :numbers, :table

  def initialize(size)
    size ||= 10
    @numbers = Prime.first(size)
    @table = Array.new(numbers.length + 1) { Array.new(numbers.length, nil) }
  end

  def render
    generate_table

    table.each do |row|
      row.each do |cell|
        print render_cell(cell)
      end
      print "\n"
    end
  end

  def generate_table
    generate_table_edges
    generate_cells
  end

  def generate_table_edges
    table[0] = [" "] + numbers
    numbers.each_with_index do |num, idx|
      table[(idx + 1)][0] = num
    end
  end

  def generate_cells
    (1..numbers.length).each do |idx|
      (1..numbers.length).each do |idy|
        if table[idx][idy] == nil
          table[idx][idy] = table[0][idy] * table[idx][0]
        end
      end
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
