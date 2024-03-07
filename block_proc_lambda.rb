# Block

#- Block is anything(chunk of code) that we write within do-end or {}.

def hello_block
  puts "Hello from block"  # this is block
end

# or 

[1,2,3].each do |i|
  puts i   # this is block
end

hello_block  #calling the method


# Invoke the block (calling anything we give to our block)

def invoking_block
  puts "Block called"
  yield
  puts "Block called again"
end

invoking_block { puts "Block invoked" }





# Passing parameters to a block

def my_block
  yield 2
  yield 3
end


my_block { |parameter| puts "parameter is #{parameter}" }



# Proc

#- They are also block of code that are bound to set to a variable

square = Proc.new { |x| puts x*x }

square.call(4) # we  have to use call method to call the proc
square.call(4,5) # will not raise any error
square[3]





# lambda

#-

lamb = lambda { |n| puts n + 1 }

# or

lamb1 = -> (n) { puts n + 1 }

lamb.call(2)
#lamb.call(2,3) # will raise exception  wrong number of arguments
lamb1.call(3) 




# return in Proc

def my_method1
  my_proc = Proc.new { return "Exiting proc" }
  puts my_proc.class # to show which class it belongs to 
  my_proc.call
  return "This will never be reached"
end

puts my_method1  # Output: Exiting proc



# return in lambda


def my_method
  my_lambda = lambda { return "Exiting lambda" }
  puts my_lambda.class # to show which class it belongs to 
  my_lambda.call
  return "This will be reached"
end

puts my_method  # Output: This will be reached



# Comment the paragraph below when you want to run the examples above

Difference

lambda are very strict with number of arguments, while procs are not.
return method behaves normally in lambda (just like normal function) and return from lambda while in proc return method returns from the enclosing method
the main difference between return in procs and lambdas is that in procs, it returns from the enclosing method, while in lambdas, it returns only from the lambda itself.


when to use any of them

Blocks:

Use blocks when you need to pass a chunk of code as an argument to a method.
Blocks are commonly used with iterator methods like each, map, select, etc., to perform operations on collections.

Procs:

Use procs when you need to reuse a block of code in multiple places within your program.
Procs are useful when you want to store a block of code in a variable and pass it around as an object.
They are also suitable for implementing custom control flow mechanisms or callbacks.


Lambdas:

Use lambdas when you need strict argument checking and cleaner return behavior compared to procs.
Lambdas are suitable for scenarios where you want the return statement to affect only the block of code inside the lambda, without affecting the enclosing method.
They are useful in situations where you want to define a small, self-contained piece of functionality that behaves like a regular method.
Lambdas are commonly used in functional programming paradigms for tasks like filtering, mapping, or reducing data.