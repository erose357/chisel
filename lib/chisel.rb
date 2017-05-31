require 'pry'
class Chisel

  def read_md(filename)
    filename = ARGV[0]
    File.read(filename)
  end

  def header_one(chunk)
    remove_md = (chunk.delete("#")).strip
    to_html = "<h1>#{remove_md}</h1>"
  end

  def header_two(chunk)
    remove_md = (chunk.delete("#")).strip
    to_html = "<h2>#{remove_md}</h2>"
  end

  def header_three(chunk)
    remove_md = (chunk.delete("#")).strip
    to_html = "<h3>#{remove_md}</h3>"
  end

  def header_four(chunk)
    remove_md = (chunk.delete("#")).strip
    to_html = "<h4>#{remove_md}</h4>"
  end

  def header_five(chunk)
    remove_md = (chunk.delete("#")).strip
    to_html = "<h5>#{remove_md}</h5>"
  end

  def paragraph(chunk)
    "<p>#{chunk}</p>"
  end

  def emphasis(chunk)
    remove_md = chunk.delete("*")
    to_html = "<em>#{remove_md}</em>"
  end

  def strong(chunk)
    #split string into array
    array = chunk.chars
    #find md characters by index
    index = 1
    until array.include?("**") == false
      if index == 1
        position = array.find_index { |md| md == "**" }
        array[position] = "<em>"
      elsif index == 2
        position = array.find_index { |md| md == "**" }
        array[position] = "</em>"
      end
      index +=1
      binding.pry
    end
    array.join
    # remove_md = chunk.delete("*")
    # to_html = "<strong>#{remove_md}</strong>"
  end

  # def line_interpret(chunk)
  #   if chunk.include?("**")
  #     strong(chunk)
  #   elsif
  #
  #   end
  # end







end
binding.pry
# ch = Chisel.new
# test = ch.read_md(ARGV[0])
# binding.pry
