# If we using modules like namespaces

module UkraineCarModule
    class BuyCar
        def self.list_of_cars
            %w[lanos, forza, vaz2109]
        end
    end
end

module GermanyCarModule
    class BuyCar
        def self.list_of_cars
            %w[bmw, porshe, audi]
        end
    end
end

class FirstCar
     include UkraineCarModule

    def get_list_of_cars
        UkraineCarModule::BuyCar.list_of_cars
    end
end

class SecondCar 
    include GermanyCarModule

    def get_list_of_cars
        GermanyCarModule::BuyCar.list_of_cars
    end
end

ukraine_cars = FirstCar.new
p ukraine_cars.get_list_of_cars

germany_cars = SecondCar.new
p germany_cars.get_list_of_cars


