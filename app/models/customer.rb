class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name (name)
    Customer.all.find do |name|
      name == name
    end
  end

  def self.find_by_first_name (name)
    
  end

  def self.all_names 
    Customer.all.map do |customer|
      customer.first_name + " " + customer.last_name
    end
  end


  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def restaurant
    self.reviews.map do |review|
      review.restaurant_name
    end
  end

  def num_reviews
    self.reviews.count
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
