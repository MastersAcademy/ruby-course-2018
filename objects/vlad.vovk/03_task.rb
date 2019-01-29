class A
  class << self
    def even_numbers(array)
      array.select { |obj| even_integer?(obj) || even_string?(obj) }
    end

    def even_integer?(object)
      object.is_a?(Integer) && object.even?
    end 

    def even_string?(object)
      object.is_a?(String) && object.to_i.even?
    end
  end
end
