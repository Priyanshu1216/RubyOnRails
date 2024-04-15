# Take an array containing only strings. Now, take a string input from user and rearrange the elements of the list according to the number of occurence of the string taken from user in the elements of the list.
# E.g.-LIST : ["no bun","bug bun bug bun bug bug","bunny bug","buggy bug bug buggy"]
# STRING TAKEN : "bug"
# OUTPUT LIST:["bug bun bug bun bug bug","buggy bug bug buggy","bunny bug","no bun"]


def rearrange_array(arr, str)
  # Split each string into words
  arr_words = arr.map { |s| s.split }
  # p arr_words

  # Sort the array based on the count of occurrences of the input string
  sorted_arr = arr_words.sort_by { |words| -words.count(str) }

  sorted_arr.map { |words| words.join(' ') }
end



arr = ["no bun", "bug bun bug bun bug bug", "bunny bug", "buggy bug bug buggy"]
puts "Enter the string: "
str = gets.chomp

output_list = rearrange_array(arr, str)
puts "OUTPUT LIST: #{output_list}"
