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


  def reviews 
    Review.all.select do |review|
      review.customer == self
    end 
  end 


  def restaurants
    restaurant = self.reviews.map do |review|
      review.restaurant
    end 
    restaurant.uniq
  end 


  def full_name
    "#{first_name} #{last_name}"
  end


  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end 


  def num_reviews
    self.reviews.count
  end 


  def self.find_by_name(full_name)
    customer_name = Customer.all.select do |customer|
      customer.full_name == full_name
    end 
    customer_name.first
  end 


  def self.find_all_by_first_name(first_name)
    Customer.all.select do |customer|
      customer.first_name == first_name
    end 
  end 

  
  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end 
  end 


end
