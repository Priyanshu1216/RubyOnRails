#  Write a method that counts down to zero using recursion.

def count_zero(n)
  if n == 0
    puts 0
  else
    puts n
    count_zero(n-1)
  end
end

count_zero(10)