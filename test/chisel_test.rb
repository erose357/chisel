require 'minitest/autorun'
require 'minitest/emoji'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_new_instance
    ch = Chisel.new

    assert_instance_of Chisel, ch
  end

  def test_header_one_tags
    ch = Chisel.new
    md = "# Header 1"

    assert_equal "<h1>Header 1</h1>", ch.header_one(md)
  end

  def test_header_two_tags
    ch = Chisel.new
    md = "## Header 2"

    assert_equal "<h2>Header 2</h2>", ch.header_two(md)
  end

  def test_header_three_tags
    ch = Chisel.new
    md = "### Header 3"

    assert_equal "<h3>Header 3</h3>", ch.header_three(md)
  end

  def test_header_four_tags
    ch = Chisel.new
    md = "#### Header 4"

    assert_equal "<h4>Header 4</h4>", ch.header_four(md)
  end

  def test_header_five_tags
    ch = Chisel.new
    md = "##### Header 5"

    assert_equal "<h5>Header 5</h5>", ch.header_five(md)
  end

  def test_paragraph_tags
    ch = Chisel.new
    md = "This is a paragraph"

    assert_equal "<p>This is a paragraph</p>", ch.paragraph(md)
  end

  def test_em_tags
    ch = Chisel.new
    md = "*emphasis*"

    assert_equal "<em>emphasis</em>", ch.emphasis(md)
  end

  def test_strong_tags
    ch = Chisel.new
    md = "**strong**"

    assert_equal "<strong>strong</strong>", ch.strong(md)
  end

  def test_line_interpret
    ch = Chisel.new
    md = "This paragaph has a some **emphasis**"
    expected = "<p>This paragraph has some <em>emphasis</em></p>"

    assert_equal expected, ch.line_interpret
  end


end
