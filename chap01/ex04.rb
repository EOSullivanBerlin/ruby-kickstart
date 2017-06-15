# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than 
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C", 
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

def grade(num_books, reads_books)
        if num_books < 10
        gd = 1
    elsif num_books >= 10 and num_books <= 20
        gd = 2
    elsif  num_books > 20
        gd = 3
    end
    if reads_books == true
        gd += 1
    end
    if gd == 1
         "D"
    elsif gd == 2
         "C"
    elsif gd == 3
         "B"
    elsif gd == 4
         "A"
    end
end
