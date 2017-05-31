require 'minitest/autorun'
require 'minitest/emoji'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_new_instance
    ch = Chisel.new

    assert_instance_of Chisel, ch
  end

  def test_header_one
    ch = Chisel.new
    header = # Header1

    assert_equal "<h1>Header1</h1>", ch.header_one(header)
  end

end
