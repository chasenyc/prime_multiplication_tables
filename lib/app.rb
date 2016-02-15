require 'optparse'
require_relative 'multiplication_table'

options = {}
begin
  OptionParser.new do |opts|
    opts.banner = "Usage: #$0 -s size"

    opts.on "-s N", Integer, "Size of multiplication table (defaults to 10)" do |s|
      options[:size] = s
    end

    opts.on "-h", "--help", "Shows basic usage" do
      warn opts
      exit
    end
  end.parse!
rescue
  puts 'Invalid argument'
end

MultiplicationTable.new(options[:size]).render
