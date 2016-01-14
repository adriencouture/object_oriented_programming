class Person

  def initialize(greeting, name)
    @greeting = greeting
    @name = name
  end

  def greeting
    "#{greeting} #{name}"
  end


  # def greeting
  #   puts "Hi, my name is #{@name}"
  # end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

chris = Instructor.new("Hi, my name is ", "Chris")
christina = Student.new("Hi, my name is ", "Chirstina")

chris.teach
christina.teach

# christina.teach does not work because she belongs to the Student class, and the
# teach Method is outside of the Student class scope.
