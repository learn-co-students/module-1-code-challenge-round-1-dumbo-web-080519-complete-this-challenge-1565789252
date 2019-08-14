class Review
    attr_reader :customer, :restaurant_name
    attr_accessor :review, :rating
  @@all = []
  def initialize(customer,restaurant_name, review, rating)
    @customer = customer
    @restaurant_name = restaurant_name
    @review = review
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end


  


end

