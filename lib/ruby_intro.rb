# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  s = 0
  arr.each {|v| s = s+v}
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

  for i in 0...arr.length do
    for j in i+1...arr.length do
      return true if arr[i] + arr[j] == number
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  puts "Hello, "+name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
