# Write a program, that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years.

print "Please enter your age: "
age = gets.chomp.to_i

case age
when 10
  puts "You will be #{age+10} after 10 years"
when 20
  puts "You will be #{age+20} after 20 years"
when 30
  puts "You will be #{age+30} after 30 years"
when 40
  puts "You will be #{age+40} after 40 years"
else
  puts "Please enter valid age"
end

