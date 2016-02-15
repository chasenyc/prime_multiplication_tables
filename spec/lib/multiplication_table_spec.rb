require_relative '../../lib/multiplication_table'

describe MultiplicationTable do
  let(:table) { MultiplicationTable.new(4) }

  it 'should generate a two dimensional array (N+1)x(N+1)' do
    expect(table.table.length).to eq 5
    expect(table.table.first.length).to eq 5
  end
  
end
