require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rachel = Customer.new("Rachel", "Francis")
brandon = Customer.new("Brandon", "James")

carmines = Restaurant.new("Carmines")
joes = Restaurant.new("Joes")

r1 = Review.new(joes, rachel, "Unproffesional", 2)
r2 = Review.new(carmines, brandon, "Family friendly and also delicious", 5)
r3 = Review.new(carmines, rachel, "Okay", 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
