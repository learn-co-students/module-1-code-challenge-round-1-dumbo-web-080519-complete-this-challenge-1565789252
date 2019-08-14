require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

derya = Customer.new("Derya", "Tanriverdi")
kevin = Customer.new("Kevin", "Molduene")
damla = Customer.new("Damla", "Gul")


r1 = Restaurant.new("Amber Steak House")
r2 = Restaurant.new("Jojo")

review2 = Review.new(derya, r1, "Amazing!", 5)
review2 = Review.new(kevin, r2, "So expensive!", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line