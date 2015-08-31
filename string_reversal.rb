class StringReverse
  def string_reverse(str)
    str.chars.inject([]) { |reverse, curr| reverse.unshift(curr) }.join
  end

  def sentence_reverse(str)
    str.split(" ").inject([]) { |reverse, curr| reverse.unshift(curr) }.join(" ")
  end
end

if __FILE__ == $0
  str = "Hello World!"

  s = StringReverse.new
  p s.string_reverse(str)
  p s.sentence_reverse(str)
end
