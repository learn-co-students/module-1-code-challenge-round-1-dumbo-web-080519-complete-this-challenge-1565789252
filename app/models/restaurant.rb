class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
      list_of_customer = self.restaurant_reviews.map {|review| review.customer}
      list_of_customer.uniq
  end

  def average_star_rating
      total = self.reviews.reduce(0) {|sum , rating| sum +=rating}
      avrg = total.to_f/(reviews.count)
      avrg
  end

  def longest_review
      self.reviews.max_by{|review| review.length}
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end
end
