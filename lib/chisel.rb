class Chisel

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
    remove_md = chunk.delete("*")
    to_html = "<strong>#{remove_md}</strong>"
  end

end
