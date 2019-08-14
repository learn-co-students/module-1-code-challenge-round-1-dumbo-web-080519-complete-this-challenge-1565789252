require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john_s = Customer.new("John", "Smith")
john_d = Customer.new("John", "Doe")
sara = Customer.new("Sara", "Saras")
amy = Customer.new("Amy", "Peters")
lucy = Customer.new("Lucy", "Lucinda")

fancy = Restaurant.new("Fancy")
fast = Restaurant.new("Fast")
tasty = Restaurant.new("Tasty")

r1 = Review.new(john_s, fancy, "Quite, quite, quite, quite Fancy", 4)
r2 = Review.new(john_d, fancy, "Not that Fancy", 2)
r3 = Review.new(sara, fancy, "Decently Fancy", 3.5)
r4 = Review.new(amy, fast, "Very fast", 4.5)
r5 = Review.new(lucy, tasty, "This is the most tasty restaurant I have ever been to, my taste buds exploded from how tasty the tastes were", 5)
r6 = Review.new(john_s, tasty, "tasty", 5)
r7 = john_s.add_review(fancy, "Went back again, not as fancy", 3)

binding.pry
puts "nailed it" #leave this here to ensure binding.pry isn't the last line
