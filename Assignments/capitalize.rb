# Write a method that takes a string as an argument. The method should return a new, all-caps version of the string,
# only if the string is longer than 10 characters.

# Example: change "hello world" to "HELLO WORLD".

def cap(str)
  if str.length > 10
    return str.upcase
  else
    return "String length is less than 10"
  end
end


puts cap("hello world")
puts cap("soham")