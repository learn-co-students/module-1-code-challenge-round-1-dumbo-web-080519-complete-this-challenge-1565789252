class Customer

  @@all = []
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

# Used do instead of {} for more readable code :)
  def self.find_by_name(name)
    @@all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    arr_of_all_names = []
    @@all.each do |customer|
      arr_of_all_names << customer.full_name
    end
    arr_of_all_names
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    self.reviews.size
  end

  def restaurants
    arr_of_all_restaurants = self.reviews.map do |review|
      review.restaurant
    end
    arr_of_all_restaurants.uniq
  end

end
