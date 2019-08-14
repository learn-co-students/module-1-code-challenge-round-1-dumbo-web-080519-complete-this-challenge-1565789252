class Review

    attr_reader :customer, :restaurant, :content, :rating
    @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating #1-5
    @@all << self
  end

  def self.all
    @@all
  end

end

