class Dictionary

  def initialize
    @d = {}
  end

  def entries
    @d
  end

  def add(new_word)
    case new_word
    when Hash then @d.merge!(new_word)
    when String then @d[new_word] = nil
    end
  end

  def keywords
    @d.keys.sort
  end

  def include?(word)
    @d.include?(word)
  end

  def find(word)
    @d.select {|k,v| k.start_with?(word)
    }
  end

end
