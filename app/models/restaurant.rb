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

  def self.find_by_name(name)
    @@all.find do |resturant|
      resturant.name == name
    end
  end


  def reviews
    Review.all.select do |review|
      review.resturant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def review_scores
    self.reviews.map do |review|
      review.rating
    end
  end

  def review_total
    self.review_scores.sum
  end

  def average_star_rating
    self.review_total / self.reviews.count
  end
  
  def content 
    self.reviews.map do |review|
      review.content
    end
  end

  def longest_review
    content.max_by do |content|
      content.length
    end
  end
  
end
