module MagicWords

  module ClassMethods
    def magic_methods(*magic_words)
      magic_words.each do |magic_word|
        define_method magic_word do
            # You can do this what you want.
          "Real magic word #{magic_word}"

        end
      end
    end
  end

  #avoid extend and include
  def self.included(base)
    base.extend(ClassMethods)
  end

end

class LonelyClass
  include MagicWords

  magic_methods :test, :rest, :fest
end

p LonelyClass.new.test
p LonelyClass.new.rest
p LonelyClass.new.fest

# Additional example
class Maths
  OPERATORS = {
      plus: '+',
      minus: '-',
      divide: '/'
  }.freeze

  def initialize(a, b)
    @a = a
    @b = b
  end

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      @a.send(operator, @b)
    end
  end

  define_method :plus do |c|
    @a + @b + c
  end
end

class Maths
  def initialize(a, b)
    @a = a
    @b = b
  end


  def plus
    @a + @b
  end

  def minus
    @a - @b
  end

  def divide
    @a / @b
  end
end

