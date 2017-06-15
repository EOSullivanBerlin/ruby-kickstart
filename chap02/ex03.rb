# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char

    to_return = ""
    each_char.with_index do |x, ind| if ind % 2 == 0
                                                    to_return << x
                                                  end
                                                end
    return to_return                                            
  end
end

"wewredf".every_other_char