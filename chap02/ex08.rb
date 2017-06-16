# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

# count the number of times the number appears
# create a counter

# iterate through the array 
# Thic just counts to see if there are three numbers
    def got_three?(el)
        count = 0
        
        while count < el.length 
              char = el[count]
              num = 0
              el.each {|x| num +=1 if x == char}
              if num >= 3
                  three = true
                  char2 = char
              end
              count +=1
              
        end
        if three == true
            el.each_cons 3 do |a, b, c|
                 if a == b && b == c
                    return true
                 end
             end
        end
                 false
    end

got_three? [1, 2, 2, 2, 3]
