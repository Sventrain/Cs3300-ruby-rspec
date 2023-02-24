# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Method sums an array of integers
  sumValue = 0 # Value to hold sum, may not be necessary given how ruby works
  sumValue = arr.sum # Uses .sum method to sum the entered array and stores it in sumValue
  return sumValue # Returns the summed value
  # It is worth noting I probably could have just done "return arr.sum" but as I haven't
  # coded in a while I wanted to step things out for my own memory
end

def max_2_sum arr
  # This method sums the 2 largest values in an array and returns it
  # If statement checks if passed array is empty using .empty? method which will return true if no elements are found.
  if arr.empty? 
    # If empty then return 0
    return 0
  
  # If array is not empty, extract max values and return sum
  else
   maxArray = arr.max(2) # The array.max method finds the largest value in an array and returns it. We can modify it with (n) at the end to extract more than one element, starting with the largest.
   sumValue = maxArray.reduce(:+) # I'll be honest, this .reduce(:+) method is some sort of devil magic. My understanding is that it reduce the affected array to one value and the :+ sums all values in the process. This method replaces needing to make a loop to sum all elements in an array to a variable. I have the sumValue for storage just for my own future reading.
   return sumValue # Returns the stored value from summing the extracted max values
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # for (i = 0; i <= arr.length; i++) is what I want to do but need to find ruby way of doing it
  # What i want to do here is take each element of an array and see if subtracting n by the element leaves a positive remainder. Then if it does, it checks it that remainder matches any non-used elements' value. If it does match a value that means two values in the array added together will equal n and true can be returned
  target = 0
  i = 0
  arr.each_with_index do |item, index|
    i = index
    if n - item >= 0
      target = n - item
      arr.each_with_index do |item, index|
        #need to find a way to skip the element used in outer loop
        if index != i && item == target
          return true
        end
      end
    end
  end
  if i == arr.length
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
