require_relative '../../lib/multiplication_table'

describe MultiplicationTable do
  let(:table_one) { MultiplicationTable.new(4) }
  let(:table_two) { MultiplicationTable.new() }

  it 'should generate a two dimensional array (N+1)x(N+1)' do
    expect(table_one.table.length).to eq 5
    expect(table_one.table.first.length).to eq 5
  end

  it 'generate_table_edges should populate top and left side with primes' do
    table_one.generate_table_edges
    expect(table_one.table[0]).to eq [" ", 2, 3, 5, 7]
    expect(table_one.table[2][0]).to eq 3
    expect(table_one.table[4][0]).to eq 7
    expect(table_one.table[2][2]).to eq nil
  end

  it 'generate_cells should fill the table' do
    table_one.generate_cells
    expect(table_one.table[2][2]).to eq 9
    expect(table_one.table[4][4]).to eq 49
    expect(table_one.table[1][2]).to eq 6
  end

  it 'cell_width should return the width of the largest cell + 2' do
    expect(table_one.send(:cell_width)).to eq 4
    expect(table_two.send(:cell_width)).to eq 5
  end

  it 'render_cell returns a stringified num with padding for the sides' do
    expect(table_one.render_cell(1)).to eq ' 1  '
    expect(table_two.render_cell(1)).to eq '  1  '
  end

  it 'render should render a table' do
    expect(table_one.render).to eq [[" ", 2, 3, 5, 7], [2, 4, 6, 10, 14], [3, 6, 9, 15, 21], [5, 10, 15, 25, 35], [7, 14, 21, 35, 49]]
  end

end
