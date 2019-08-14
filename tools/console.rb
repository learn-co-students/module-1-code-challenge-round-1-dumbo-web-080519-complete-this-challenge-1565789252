require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kenny = Customer.new("Kenny", "Marks")
renee = Customer.new("Renee", "Cruz")
matt = Customer.new("Matt", "Warner")

chipotle = Restaurant.new("Chipotle")
mcdonalds = Restaurant.new("McDonald's")
wafflehouse = Restaurant.new("Waffle House")
applebees = Restaurant.new("Applebees")

kr1 = Review.new(kenny, chipotle, 5, "OMNOMNOMNOM")
kr2 = Review.new(kenny, mcdonalds, 1, "I feel sick")
rr1= Review.new(renee, wafflehouse, 3, "average")
mr1 = Review.new(matt, applebees, 2, "Disgusting")
mr2 = Review.new(matt, wafflehouse, 4, "Great food!")

rr2 = renee.add_review(chipotle, "gross", 1)
kr3 = kenny.add_review(mcdonalds, "meh", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line