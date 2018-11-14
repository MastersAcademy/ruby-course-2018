class Maths
  OPTIONS = {
    plus: :+,
    minus: :-,
    devide: :/,
    multiply: :*
  }

  def initialize(value_1, value_2)
    @value_1 = value_1
    @value_2 = value_2
  end 

  # type of input for value: Maths.new(value_1, value_2).plus
  OPTIONS.each do |key, value|
    define_method key do
      p @value_1.send(value, @value_2)
    end
  end

  # type of input for value: Maths.new.plus(value_1, value_2)
  # OPTIONS.each do |key, value|
  #   define_method key do |value_1, value_2|
  #     p value_1.send(value, value_2)
  #   end
  # end
end
  