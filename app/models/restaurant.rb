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
    Review.all.select do |review|
      review.restaurant == self
    end 
  end 


  def customers
    all_customers = self.reviews.map do |review|
      review.customer
    end 
    all_customers.uniq
  end 


  def average_star_rating
    ratings = self.reviews.map do |review|
      review.rating
    end 
    ratings.sum.to_f/ratings.count.to_f
  end 


  def review_content
    self.reviews.map do |review|
      review.content
    end 
  end 


  def longest_review
    sorted_content = self.review_content.sort_by do |content|
      content.length
    end 
    sorted_content.last
  end 


  def self.find_by_name(name)
    restaurant_name = Restaurant.all.select do |restaurant|
      restaurant.name == name
    end 
    restaurant_name.first
  end 


end
