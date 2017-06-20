# Write a function which takes two arrays, a, and b
# it should then find the elements that are in both (union)
#
# This is the same as [1,2,3] & [1,2,4]
# but we don't want to use the builtin method
# instead, implement your own by creating a hash table of elements from the first set
# and checking it against the elements from the second set
#
# the keys will be the elements in the arrays
# each value will be a two element array, where the first index is true if the
# key is in a, and the second is true if the key is in b
# if an index is not true, it should be nil
#
# return the hash, and the array of elements in both sets (it should be sorted)
# (do not worry about the order of the hash, remember, on 1.8, hashes have no ordering)
#
# hints:
#   you can set up default behaviour for a hash by passing a block, see cheatsheet (essentially a lazy initialization)
#   you can get an array of keys from a hash with the keys method
#
# examples:
#
# shared [1,2,3], [1,2,4]            # => [{1=>[true, true], 2=>[true, true], 3=>[true, nil], 4=>[nil, true]}, [1, 2]]
# shared %w(a b c d), %w(aa b cc d)  # => [{"a"=>[true, nil], "b"=>[true, true], "c"=>[true, nil], "d"=>[true, true], "aa"=>[nil, true], "cc"=>[nil, true]}, ["b", "d"]]
# shared [], [1,2]                   # => [{1=>[nil, true], 2=>[nil, true]}, []]
# shared [1,2], []                   # => [{1=>[true, nil], 2=>[true, nil]}, []]
# shared [], []                      # => [{}, []]
# shared [1,2,:c], ['a','b',:c]      # => [{1=>[true, nil], 2=>[true, nil], :c=>[true, true], "a"=>[nil, true], "b"=>[nil, true]}, [:c]]
# shared [1,2,3], [3,2,1]            # => [{1=>[true, true], 2=>[true, true], 3=>[true, true]}, [1, 2, 3]]
=begin
def shared(a, b)
    to_return_hash = Hash.new {|this_hash, key| this_hash[key] = Array.new}
    
    count = 0
    while a.length > count 
   
    if b.include? a[count] 
        to_return_hash[a[count]] << true << true
    else
        to_return_hash[a[count]] << true << nil
    end
    
    count += 1
    
    end
    c = b - a 
    count = 0
    while c.length > count
     
        to_return_hash[c[count]] << nil << true
        count +=1
    end
    
   print to_return_hash
end
=end
def shared(a, b)
  # union = Hash.new do |hash, key|
  #   hash[key] = [(a.include?(key)||nil), # include returns true or false, when false, it goes to the RHS of the ||, and becomes nil
  #                (b.include?(key)||nil)]
  # end

  union = {}
  a.each do |element|

    union[element] ||= [nil, nil]
    union[element][0] = true
  end

  b.each do |element|
    union[element] ||= [nil, nil]
    union[element][1] = true
  end

  result = union.select { |key, value| value == [true, true] }.map { |key, value| key }

  return union, result.sort
end