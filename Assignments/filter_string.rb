# WAP to delete all of the strings that begin with an "s" and "w" in the following array.
#     arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']


def filter_str(arr)
  newArr = arr.delete_if do |str|
    str.start_with?("w") || str.start_with?("s")
  end
  return newArr
end


arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
print filter_str(arr)