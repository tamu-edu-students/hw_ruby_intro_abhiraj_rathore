# frozen_string_literal: true

# Part 1

def sum arr
  sum_arr = 0
  arr.each do |x| sum_arr = sum_arr + x.to_i
  end
  return sum_arr
end

def max_2_sum arr
  #if there are 0 elements
  if arr == []
  	return 0
  end
  #if there is one element
  if arr.length == 1
    return arr[0]
  end
  #if there are two or more elements
  max1 = arr.min
  max2 = arr.min
  arr.each do |x|
    if x >= max1
      max2 = max1
      max1 = x
    elsif x >= max2 and x != max1
      max2 = x
    end
  end
  return (max1 + max2)
end

def sum_to_n?(arr, n)
  #if there are no elements
  if arr == []
  	return false
  end
  #if there is one element
  if arr.length == 1
    return false
  end
  #if there are two or more elements
  arr = arr.sort
  ei = arr.length
  i = 0
  j = ei-1
  while i<j
    sumto_n = arr[i] + arr[j]
    if sumto_n < n
      i = i+1
    elsif sumto_n > n
      j = j-1
    else 
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}";
end

def starts_with_consonant?(string)
   /[^_aeiou\W\d]/i.match(string[0])
end

def binary_multiple_of_4?(string)
  if string.length == 0
    return false
  end
  #if length of the string is more than 0
  string.chars.each do |ch|
    if ch != "1" and ch != "0"
      return false
    end
  end
  if string.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
	def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if price<=0 || isbn.size == 0
			raise ArgumentError
		end
	end
	def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn_)
    @isbn = isbn_
  end
  def price=(price_)
    @price = price_
  end
	def price_as_string
		return "$#{'%.2f' %  @price}"
	end
  
end
