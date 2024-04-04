# Take the following array:
#   a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
#   and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]




# def convert_array(arr)
#   newArr = []
#   arr.each  do |i|
#     newArr.push(i.split())
#   end 
#   print newArr
# end

def convert_array(arr)
  newArr = []
  arr.each do |str|
    words = str.split(' ')
    puts words
    words.each do |word|
      newArr.push(word)
    end
  end 
  print newArr
end

arr = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
convert_array(arr)