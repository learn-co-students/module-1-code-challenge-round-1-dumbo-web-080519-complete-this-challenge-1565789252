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

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select do |review|
      review if review.customer == self
    end.compact.count
  end

  def restaurants
    Review.all.map do |review|
      review.restaurant if review.customer == self
    end.compact.uniq
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer if customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer if customer.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end
end
