# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
    # I might have to create a way to filiter the incoming numbers
    # create a hash
    
    to_return = {}
    count = 1
    even = []
    odd = []
    # 5
    # 1 - []
    while num >= count
    
    # find all of the odd numbers up to the key
    odd << count if count.odd?  
    # find all of the even numbers up to the key
    even << count if count.even?
    
    count += 1
    end
    count = 0
    while odd.length > count
    array = []
    even.each {|x| array << x if x < odd[count]}
    to_return[odd[count]] = array
    count += 1
    end
    
    return to_return
    
end

staircase(9)
    