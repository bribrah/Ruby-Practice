class Pet
    attr_accessor :name, :age, :gender, :color
end
class Dog < Pet
    def bark
        puts "Woof"
    end
end
class Cat < Pet
end
class Snale < Pet
end

ocean =  Dog.new
ocean.bark