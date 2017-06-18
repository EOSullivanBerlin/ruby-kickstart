# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
=begin
def alternate_words(array)
    # remove all of the '!@$#%^&*()-=_+[]:;,./<>?\|
    to_del = %w(! @ $ % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |)
    puts to_del
    # split(" ")
    to_return = []
    array.split(" ").each_with_index do |x, ind| if ind % 2 == 0 or ind == 0
                                                 to_return << x
                                             end
                                                 end
    # .each if index is 0 or % 2 == 0
    # print 
    last_array = []
    to_return.each do |x| x.split("").map do |x| if to_del.include? x
                                             
                                        end
                                        end
                                 
    puts last_array
end

alternate_words("Lorem ipsum dolor sit amet.")
=end
def alternate_words(array)
  # this will get better when we learn regular expressions :)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    array = array.gsub(char, ' ')
  end
  words = array.split
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end