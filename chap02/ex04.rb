# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(array)
    if array.length <= 1
        return []
    end
    # create sorted_array
    sorted_array = []
    array.each { |x| sorted_array << x if array.include? x * x  }
    # iterate through the array and square each number
    # iterate through it again to see if the square is in the array
    sorted_array.sort
    
    
end

get_squares([25, 4, 9, 6, 50, 16, 5])
