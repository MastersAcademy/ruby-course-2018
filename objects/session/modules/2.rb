# If we using modules like mixin
module ChangeColor
    def set_color(color_name)
      @color = color_name
    end
end

class FirstCar
    include ChangeColor

    attr_accessor :brand, :color

    def initialize(brand, color)
        @brand = brand
        @color = color
    end

    def car_info
        p "Your #{@brand} has #{@color} color"
    end
end

class SecondCar 
   include ChangeColor

   attr_accessor :brand, :color

   def initialize(brand, color)
    @brand = brand
    @color = color
   end

   def car_info
    p "Your #{@brand} has #{@color} color"
   end
end

first_car = FirstCar.new('Lanos', 'blue')
first_car.car_info
first_car.set_color('black')
first_car.car_info

p "================================================================="

second_car = SecondCar.new('Porshe', 'white')
second_car.car_info
second_car.set_color('pink')
second_car.car_info
