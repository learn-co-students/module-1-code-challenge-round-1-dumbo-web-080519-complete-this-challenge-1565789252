class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def reviews 
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    reviews.size
  end

  def restaurants
    (reviews.map {|review| review.restaurant}).uniq
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def self.all
    @@all
  end

end
