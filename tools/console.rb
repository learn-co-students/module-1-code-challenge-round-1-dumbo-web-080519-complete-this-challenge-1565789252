require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kim = Customer.new("Kimberly", "Bone")
deja = Customer.new("Deja", "Gilmore")
sadie = Customer.new("Sadie", "Bennett")
cora = Customer.new("Cora", "Evans")
kim2 = Customer.new("Kimberly", "Smith")

pf_changs = Restaurant.new("P.F. Chang's")
hops = Restaurant.new("Hops")
scrambled = Restaurant.new("Scrambled")
maxie_b = Restaurant.new("Maxie B's")


kim.add_review(pf_changs, 2, "Service isn't too great. I love the ahi poke bowl.")
deja.add_review(scrambled, 3, "Cool place to eat.")
kim.add_review(maxie_b, 5, "So cute. Great service.")
cora.add_review(scrambled, 4, "Love the food.")
sadie.add_review(hops, 2, "Overpriced.")









binding.pry
0 #leave this here to ensure binding.pry isn't the last line