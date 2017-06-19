# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

#def pirates_say_arrrrrrrrr(string)
#  response = ""
=begin  string.downcase.delete(" ").split("r").drop(1).each do |i|
    if i == ""
      response << "r"
    else response << i[0]
    end
  end
  response
end
=end

=begin def pirates_say_arrrrrrrrr(string)
  response = ""
string.downcase.delete(" ").split("r").drop(1).each do |i|
    if i == ""
      response << "r"
    else response << i[0]
    end
  end
  response
end
=end

def pirates_say_arrrrrrrrr(string)
  to_return = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index,1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end

#string.downcase.delete(" ").chars.each do
#  if i == r
#    puts 1.next
#end
