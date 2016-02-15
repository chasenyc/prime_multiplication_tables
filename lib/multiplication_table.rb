require_relative 'prime'

class MultiplicationTable

  attr_reader :numbers, :table

  def initialize(size=10)
    size ||= 10
    @numbers = Prime.first(size)
    @table = Array.new(numbers.length + 1) { Array.new(numbers.length+1, nil) }
  end

  def render
    generate_cells

    table.each do |row|
      row.each do |cell|
        print render_cell(cell)
      end
      print "\n"
    end
  end

  def generate_table_edges
    table[0] = [" "] + numbers
    numbers.each_with_index do |num, idx|
      table[(idx + 1)][0] = num
    end
  end

  def generate_cells
    generate_table_edges

    (1..numbers.length).each do |row|
      col = row
      until col > numbers.length
        if table[row][col] == nil
          table[row][col] = table[0][col] * table[row][0]
          table[col][row] = table[0][col] * table[row][0] unless row == col
        end
        col += 1
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

x = MultiplicationTable.new(4)
x.render
