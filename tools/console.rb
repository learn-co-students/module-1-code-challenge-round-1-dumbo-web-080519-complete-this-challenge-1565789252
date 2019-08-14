require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tom2 = Customer.new("Tom", "Green")
tom = Customer.new("Tom", "Brady")
bob = Customer.new("Bob", "Smith")
jan = Customer.new("Jan", "Doe")
zen = Customer.new("Zen", "Master")

applebees = Restaurant.new("Applebees")
canes = Restaurant.new("Canes")
bk = Restaurant.new("Burger King")
ihop = Restaurant.new("IHOP")

r1 = Review.new(jan, bk, 4, "Whoopers 4 life")
r2 = Review.new(tom, ihop, 5, "ok")
r3 = Review.new(tom, bk, 0, "This place sucks!")
r4 = Review.new(tom, bk, 5, "I changed my mind. Great place!")
r5 = Review.new(bob, bk, 5, "I love this place!!!!!!!")
r6 = Review.new(jan, canes, 5, "Great service. Great lemonade. Great dog.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line