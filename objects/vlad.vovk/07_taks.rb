class A
  BRACES = {
    '{' => '}',
    '(' => ')',
  }.freeze

  def valid_string?(string)
    string = clear_off(string)
    sym_count = string.size
    delete_element = BRACES.each { |key, value| delete_if_equal(key, value, string) }

    return false if sym_count.odd?

    sym_count.times { delete_element }
    string.empty?
  end

  private 

  def clear_off(string)
    string.chars.select { |char| char_valid?(char) }
  end

  def char_valid?(char)
    BRACES.key?(char) || BRACES.value?(char)
  end

  def delete_if_equal(key, value, array)
    boolean = array.first.eql?(key) && array.last.eql?(value)
    array.shift && array.pop if boolean 
  end
end