require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry



jerry = Customer.new("Jerry", "Brooks") 
karen = Customer.new("Karen", "Naggy")
lisa = Customer.new("Lisa", "Worst")

wing_palace = Restaurant.new("Wing Palace")
bad_china = Restaurant.new("Bad China")
flat_iron = Restaurant.new("Flat Iron")

review1 = Review.new(wing_palace, "Raw wings..gross", 1)
review2 = Review.new(bad_china, "Food was so greasy n guud", 4)
review3 = Review.new(flat_iron, "The food was so hard! Really tough", 3)







# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line