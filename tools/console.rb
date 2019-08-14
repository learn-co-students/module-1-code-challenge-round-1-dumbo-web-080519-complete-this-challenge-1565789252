require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cust1 = Customer.new("Josh", "Nho")
cust2 = Customer.new("Lara", "Park")
cust3 = Customer.new("Joe", "Hong")
cust4 = Customer.new("Joe", "Kim")

rest1 = Restaurant.new("Applebees")
rest2 = Restaurant.new("McDonalds")
rest3 = Restaurant.new("Olive Garden")

rev1 = Review.new(cust1, rest1, 5, "good")
rev2 = Review.new(cust2, rest2, 3, "bad")
rev3 = Review.new(cust3, rest3, 3, "okay, not bad")
rev4 = Review.new(cust1, rest3, 5, "good")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line