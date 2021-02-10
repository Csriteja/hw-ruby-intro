# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total=0
  if(arr.empty?)
    return 0
  else
    for num in arr
      total = total+num
    end
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if(arr.empty?)
    return 0
  elsif(arr.size()==1)
    return arr[0]
  else
    arr.sort!
    len = arr.size()-1
    return arr[len]+arr[len-1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if(arr.empty? || arr.size()==1)
    return false
  else
    return !!arr.uniq.combination(2).detect{|a,b| a+b == n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s.count('01')==s.size)
    if(s.end_with?('00'))
      return true
    elsif(s.size==1 && s.end_with?('0')) 
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price
  
  def initialize(isbn,price)
    if(isbn.empty? || price<=0)
      raise ArgumentError
    end
    @isbn=isbn
    @price=price
  end
  
  def isbn=(isbn)
    if(isbn.empty?)
      raise ArgumentError
    end
    @isbn=isbn
  end
  
  def price=(price)
    if(price<=0)
      raise ArgumentError
    end
    @price=price
  end
  
  def price_as_string
    rounded_val = sprintf('%.2f', @price)
    return "$"+rounded_val
  end
end
