require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Create customers
sukrit = Customer.new("Sukrit", "Walia")
tate = Customer.new("Tate", "Shepard")
eric = Customer.new("Eric", "Kim")
dan = Customer.new("Dan", "Fries")
tate2 = Customer.new("Tate", "Other")

# Create restaurants
mcd = Restaurant.new("McDonalds")
sshack = Restaurant.new("Shake Shack")
bking = Restaurant.new("Burger King")
fguys = Restaurant.new("Five Guys")

# Create reviews through customers
sukrit.add_review(mcd, 5, "ok, i guess")
sukrit.add_review(sshack, 5, "👍")
sukrit.add_review(fguys, 3, "No bueno")

tate.add_review(mcd, 1, "nope")
tate.add_review(sshack, 2, "meh")

eric.add_review(bking, 5, "the king")
eric.add_review(mcd, 1, "👎")

dan.add_review(sshack, 3, "meh")

# Create duplicate restaurant review to test Customer#restaurants
# as well as Restaurant#customers
sukrit.add_review(mcd, 1, "nvm")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
