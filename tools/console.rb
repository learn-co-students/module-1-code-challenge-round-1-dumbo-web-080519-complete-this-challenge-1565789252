require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

renee = Customer.new("Renee","Cruz")

cafe_mogador = Restaurant.new("Cafe Mogador")

review_1 = Review.new(renee, cafe_mogador, 5, "Food so tasty, OMG.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line