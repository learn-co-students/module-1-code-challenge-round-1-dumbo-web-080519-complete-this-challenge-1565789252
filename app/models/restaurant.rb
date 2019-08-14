class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name (name)
    Restaurant.all.find do |name|
      name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant_name == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end



  def restaurant_average_star
    self.reviews.map do |review|
      review.rating % 100.0
    end
  end

  def longest_review
   
  end


end
