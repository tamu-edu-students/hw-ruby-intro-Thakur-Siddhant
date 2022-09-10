# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  s = 0
  arr.each {|i| s = s+i}
  s
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length==1
  arr.sort.last(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  return false if arr.empty? or arr.length == 1

  h = Hash.new

  arr.each{|i|
    if h.key? i
      return true
    else
      h[number - i] = 0
    end
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return true if /^[[a-z&&[^aeiou]],[A-Z&&[^AEIOU]]]/.match(string)
  return false
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  return true if string=="0"
  return true if /^[0,1]*00$/.match(string)
  return false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError.new(
      "ISBN is empty or price is less than or equal to zero"
    ) if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string()
    return sprintf('$%.2f',@price)
  end
end
