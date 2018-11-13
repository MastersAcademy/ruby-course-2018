module Hello
    def say_hello
        p 'Hello'
    end
end

module Hola
    def say_hola
        p 'Hola'
    end
end

class Person
    include Hello
    extend Hola
end

Person.new.say_hello
Person.say_hola

# Till be error this
migel = Person.new
migel.say_hola

