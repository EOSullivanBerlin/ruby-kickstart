# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}
=begin
def first_pos(string)
   
    to_return = {}
    array = []
    array = string.split(" ").uniq
    
    array.each_with_index {|x, ind| to_return[x] = ind} 
    to_return
end
=end
def first_pos(str)
  to_return = {}
  str.split.each_with_index do |word, index|
    to_return[word] ||= index
  end
  to_return
end
