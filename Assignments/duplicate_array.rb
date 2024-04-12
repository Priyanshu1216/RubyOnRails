# Given an array of N integers, and an integer K, find the number of pairs of elements in the array whose sum is equal to K.
# Find Duplicate in an array.


arr = [1, 2, 3, 4, 5]
k = 7

def find_pairs(arr,k)
  count  = 0
  for i in 0...arr.length do
    for j in (i+1)...arr.length do
      # puts arr[i]
      # puts arr[j]
      if arr[i] + arr[j] == k
        count += 1
      end
    end
  end
  count
end

puts find_pairs(arr,k)