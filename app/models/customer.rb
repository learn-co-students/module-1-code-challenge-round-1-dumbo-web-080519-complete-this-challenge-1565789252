class Customer
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def add_review(restaurant, content, rating)
    if rating >= 1 && rating <= 5
      Review.new(content, rating, self, restaurant)
    else
      puts "Cannot create review because rating must be between 1 - 5"
    end
  end

  def customer_review
      Review.all.select{|review| review.customer == self}
  end

  def num_reviews
      self.customer_review.count
  end

  def restaurant 
      restaurant_reviewed = self.customer_review.map {|customer| customer.restaurant}
      restaurant_reviewed.uniq  
  end

  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
      fullname = name.split(' ')
      self.all.find {|name| name.first_name == fullname[0] && name.last_name == fullname[1]}
  end

  def self.find_by_first_name(name)
      self.all.select{|name| name.first_name == name}
  end

  def self.all_name
      self.all.map {|name| full_name(name.first_name,name.last_name)}
  end
end
