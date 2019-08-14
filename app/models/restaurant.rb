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

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    cust_array = self.reviews.map {|my_review| my_review.customer}
    cust_array.uniq
  end

  def average_star_rating
    all_ratings = self.reviews.map {|my_review| my_review.rating}
    all_ratings.sum / all_ratings.count
  end

  def longest_review
    self.reviews.max_by{|review| review.content.length}
  end

  def self.find_by_name(name)
    self.all.find {|restaurent| restaurent.name == name}
  end
end
