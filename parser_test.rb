require 'minitest/autorun'
require_relative 'parser'


class ParserTest < MiniTest::Unit::TestCase
  
  def test_it_exists
    assert Parser.new
  end

  def test_it_reads_a_file
    Parser.read
  end

end
