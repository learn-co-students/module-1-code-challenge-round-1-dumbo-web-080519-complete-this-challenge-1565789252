require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


matt = Customer.new("Matt", "Werner")
alex = Customer.new("Alex", "DeBaere")
noah = Customer.new("Noah", "Klag")
doyle = Customer.new("Matt", "Doyle")

dunkin = Restaurant.new("Dunkin' Donuts")
cien = Restaurant.new("Cien Montaditos")
tbell = Restaurant.new("Taco Bell")

rev1 = Review.new(matt, cien, 4, "Great deals!")
rev2 = Review.new(alex, dunkin, 5, "Delicious breakfast sandwiches.")
rev3 = Review.new(matt, dunkin, 4, "Best iced coffee!")
rev4 = Review.new(noah, tbell, 2, "Gross")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line