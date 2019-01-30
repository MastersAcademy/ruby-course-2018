class Checker
  ITEMS = {
      '{' => '}',
      '<' => '>'
  }.freeze

  def initialize(str)
    @str = str
  end

  def correct?
    a = Array.new
    @str.each_char do |param|
      a << param if ITEMS.key?(param)
      return false if ITEMS.key(param) and ITEMS.key(param)!=a
    end
    a.empty?
  end
end

entr = gets.chomp
puts Checker.new(entr).correct?