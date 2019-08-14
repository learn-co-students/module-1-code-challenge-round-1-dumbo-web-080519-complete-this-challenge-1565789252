require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

KFC = Restaurant.new("KFC")
Popeyes = Restaurant.new('Popeyes')

brian = Customer.new("Brian","Wong")
mike = Customer.new("Mike","Chan")

yelp1 = Review.new(brian,KFC, 8, "it's very good")
yelp3 = Review.new(mike,KFC, 4, "fkasdljflksdjflkasdjflkasdjlkfjasdlkfs")
yelp2 = Review.new(mike, Popeyes, 10, "it flkjashflkdsajlkfsadkl")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line