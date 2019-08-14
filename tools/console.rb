require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mina = Customer.new("Zermina", "Ejaz")
katy = Customer.new("Katy", "Kon")
tom = Customer.new("Tom", "Han")

mcdonalds = Restaurant.new("mcdonalds")
burger_king = Restaurant.new("burgerking")

mina.add_review(burger_king, "love it", 5)
katy.add_review(mcdonalds, "love it", 5)
tom.add_review(burger_king, "Betttttterrrrrr", 7)
katy.add_review(burger_king, "eh", 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line