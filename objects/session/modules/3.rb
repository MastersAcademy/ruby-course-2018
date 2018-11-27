module Extend
    def first_method
        p "Hello from an instanse method"
    end

    module ClassMethods
        def second_method
            p "Hello from a class method"
        end
    end

    def self.included(base)
        base.extend(ClassMethods)
    end
end

class Person
    include Extend
end

Person.new.first_method
Person.second_method