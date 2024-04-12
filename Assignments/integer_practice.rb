# Take 20 integer inputs from user and print the following:
# number of positive numbers
# number of negative numbers
# number of odd numbers
# number of even numbers
# number of 0s.


def take_input
  arr = []
  20.times { |i| arr.push(gets.chomp.to_i)}
  positive_num = []
  negative_num = []
  even_num = []
  odd_num = []
  zeros = []
  arr.each do |i|
    if i>0
      if i%2 == 0
        even_num.push(i)
      elsif i%2 !=0
        odd_num.push(i)
      else
        zeros.push(i)
      end
      positive_num.push(i)
    elsif i<0
      negative_num.push(i)
      if i%2 == 0
        even_num.push(i)
      elsif i%2 !=0
        odd_num.push(i)
      else
        zeros.push(i)
      end
    else
      zeros.push(i)
    end
  end
  puts "Total positive numbers: #{positive_num.length}"
  puts "Total negative numbers: #{negative_num.length}"
  puts "Total even numbers: #{even_num.length}"
  puts "Total odd numbers: #{odd_num.length}"
  puts "Total Zero's: #{zeros.length}"
end

take_input()
