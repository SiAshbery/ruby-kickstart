# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

#class String
 # def every_other_char
  #  letters = chars
   # to_return = letters.select{|x|letters.index(x).even?}.join("")
    #to_return
  #end
#end

class String
  def every_other_char
    letters = chars
    every_other = {}
    letters.each_with_index{|item, index| every_other[index] = item}
    letters = []
    every_other.delete_if{|key, value| key.odd?}.each{|key, value| letters << value}
    letters.join
  end
end

