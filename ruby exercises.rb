##### product of all the nums in a range

nums = 1..10
prod = 1

nums.each() do |num|
  prod *= num
end
prod


##### Adds "BOOM" to objects of an array

peeps = ["ian", "dave", "rich"]
peeps.each() do |peep|
  peep.concat(" BOOM")
end
peeps


##### Makes martini have 3x each letter

my_fave_drink = "martini"
my_new_drink = []

my_fave_drink.length.times() do |i|
  3.times() do
    my_new_drink.push(my_fave_drink[i])
  end
end
my_new_drink.join()


##### defines method for the array class that converts objects in an array to upercase

boy = ["luke", "dan", "leo"]

class Array
  define_method(:upcase) do
    self.each() do |i|
      i.upcase!()
    end
  end
  self
end

boy.upcase()


##### defines method for the range class that returns the product of all of the elements of the range

ran = 1..3

class Range
  define_method(:product) do
    prod = 1
    self.each() do |num|
      prod *= num
    end
    prod
  end
end


##### defines method for the string class that triples each letter

class String
  define_method(:triple_letters) do
    new_string = []
    self.length.times() do |i|
      3.times() do
        new_string.push(self[i])
      end
    end
    new_string.join()
  end
end


##### defines method for the string class that takes a fixnum argument and multiplies each letter by it

class String
  define_method(:multiply_letters) do |arg|
    new_string = []
    self.length.times() do |i|
      arg.times() do
        new_string.push(self[i])
      end
    end
    new_string.join()
  end
end


##### defines method for the Fixnum class that adds 1 to a number if it is positive or 0, and subtract 1 if it is negative

class Fixnum
  define_method(:absolutely_larger) do
    if self.>=(0)
      self.+(1)
    else
      self.-(1)
    end
  end
end


##### Make an Fixnum#can_drink_alcohol? method that returns a boolean based on if the Fixnum is greater than or equal to 21.

class Fixnum
  define_method(:can_drink?) do
    self.>=21
  end
end


##### Make an Fixnum#has_two_digits? method which returns true if the Fixnum is between 10 and 99, or -10 and -99

#self.<=(99) && self.>=(10)
#self.<=(-10) && self.>=(-99)

class Fixnum
  define_method(:two_digits?) do
    positive = 10..99
    negative = -99..-10
    positive.cover?(self)
    negative.cover?(self)
  end
end

##### Create a variable called grade and set it equal to A, B, C, D or F. Use the above tools to print out one message if the grade is an A, one message if the grade is a B or a C, and one message if the grade is D or F.

grade = :E

great = grade.eql?(:A)
okay = grade.eql?(:B)|grade.eql?(:C)
fail = grade.eql?(:D)|grade.eql?(:F)

if great
  "You passed the ruby test!"
elsif okay
  "You did pretty well at the ruby test and passed!"
elsif fail
  "Sorry, you did not pass the ruby test"
end


##### Create a variable called temperature and set it equal to a Fixnum to represent a number of degrees Fahrenheit. Check to see if temperature is within 60-80 degrees, and if it is then print out "It's balmy outside!", and a different message if it isn't. You will have to use a combination of a few of these: <() (less-than), <=() (less-than-or-equal-to), >() (greater-than), >=() (greater-than-or-equal-to) and &().

temp = 59
temp_range = 60..80

hot = temp.>(80)
balmy = temp_range.include?(temp)
cold = temp.<(60)

if hot
  "It's HOT outside"
elsif balmy
  "It's balmy outside!"
elsif cold
  "It's C-O-L-D COLD outside"
end


##### Create a variable to store your first name. Then use if and else to print one message if your name begins with a letter between A and M, and a different message if it begins with a letter between N and Z. Hint: Remember the String#split method and the Array#at method from the section on "Arrays and ranges". Also, you can check if a number or letter is within a range by using the Range#include? method. For example: (0..4).include?(1) will return true because 1 is between 0 and 4.

name = "Sean"
name_array = name.split("")
first_letter = name_array.at(0)

first_half = "A".."M"
second_half = "M".."Z"

if first_half.include?(first_letter)
  "Your name begins in the first half of the alphabet"
elsif second_half.include?(first_letter)
  "Your name begins in the second half of the alphabet"
end


##### The Ping-Pong test is a programming test that makes sure you understand how to use loops, conditionals, and variables. The challenge is to simply make a Fixnum#ping_pong method that returns an Array of all the numbers from 0 up to the number it was called on. But, for multiples of three, the Array contains the String "ping" instead of the number, and for multiples of five, the Array contains "pong". For numbers that are multiples of three and five, the Array contains "ping-pong". In other words:

class Fixnum
  define_method(:ping_pong) do
    game_range = 0..self
    game_output = []
    game_range.each() do |num|
      if num.%(3).==(0).&(num.%(5).==(0))
        game_output.push("ping-pong")
      elsif num.%(3).==(0)
        game_output.push("ping")
      elsif num.%(5).==(0)
        game_output.push("pong")
      elsif
        game_output.push(num)
      end
    end
    game_output
  end
end
