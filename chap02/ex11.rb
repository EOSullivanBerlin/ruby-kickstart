# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.
class BeerSong
    def initialize(num_of_beer)
        @num_of_beer = num_of_beer
    end
    
    attr_accessor :num_of_beer
    
   def beer_print
       puts @num_of_beer
   end
   
 
       

   
   def singsong
       
       while @num_of_beer > 1 
       
          
       puts "#{translate(num_of_beer)} #{bottle num_of_beer} of beer on the wall,"        ,
           "#{translate(num_of_beer)} #{bottle num_of_beer} of beer,"  ,
           "Take one down, pass it around,"                         ,
           "#{translate (num_of_beer - 1)} #{bottle (num_of_beer - 1)} of beer on the wall."
          
        @num_of_beer -= 1
    end
   end
   
   def bottle(num_of_beer)
    if num_of_beer == 1 then 'bottle' else 'bottles' end
  end
   
   def translate(num_of_beer)
        if   num_of_beer > 0 && num_of_beer < 19
                @teen = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'eleven', 'twelve', 'thriteen', 'fourteen', 'fiftenn', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
                return @teen[num_of_beer]
        elsif num_of_beer % 10 == 0
                @tens  = ['zero','ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
                return @tens[num_of_beer/10]
        else
             return "#{translate @num_of_beer/10*10}" + " " + "#{translate (@num_of_beer ) % 10}"
    
   end
   end
   
end 
loads = BeerSong.new(35)
loads.singsong

