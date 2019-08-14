class Customer
  attr_reader :first_name, :last_name 
  attr_accessor :full_name
  @@all = []
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  
  def full_name_arr 
    @fullname << self.full_name
  end

  def self.all_names
    @full_name 
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end


  
  #helper method to check all rest that a cust wrote review to
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end
  end

  def add_review(restaurant,rating, content)
    Review.new(self,restaurant,rating,content)
  end

  def num_reviews
    self.restaurants.count
  end
end

