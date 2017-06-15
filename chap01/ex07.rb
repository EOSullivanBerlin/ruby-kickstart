# given a string, return the character after every letter "r"
# 

# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    # split("r") 
    # print out 2 position of each string - the first word
    array = []
    string.split("").each_with_index do |letter, i|
        if letter == 'r' or letter == "R"
            array << string[1+i]
            
        end
    end
   array.join("")
end

