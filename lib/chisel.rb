class Chisel

  def header_one(chunk)
    remove_md = (chunk.delete("#")).strip
    to_html = "<h1>#{remove_md}</h1>"
  end

end
