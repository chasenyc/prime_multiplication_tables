require_relative '../../lib/multiplication_table'

describe MultiplicationTable do
  let(:table_one) { MultiplicationTable.new(4) }

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
end
