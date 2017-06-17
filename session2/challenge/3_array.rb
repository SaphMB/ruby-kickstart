# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    string_of_chars = ""
    chars.each_with_index do |item,index|
      index.even? ? string_of_chars << item : nil 
    end
    string_of_chars
  end
end
