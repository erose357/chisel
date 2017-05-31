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
    header = "# Header 1"

    assert_equal "<h1>Header 1</h1>", ch.header_one(header)
  end

  def test_header_two
    ch = Chisel.new
    header = "## Header 2"

    assert_equal "<h2>Header 2</h2>", ch.header_two(header)
  end

  def test_header_three
    ch = Chisel.new
    header = "### Header 3"

    assert_equal "<h3>Header 3</h3>", ch.header_three(header)
  end

  def test_header_four
    ch = Chisel.new
    header = "#### Header 4"

    assert_equal "<h4>Header 4</h4>", ch.header_four(header)
  end

  def test_header_five
    ch = Chisel.new
    header = "##### Header 5"

    assert_equal "<h5>Header 5</h5>", ch.header_five(header)
  end

end
