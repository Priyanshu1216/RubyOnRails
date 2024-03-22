Monkey Patching

1. Ways to implement monkey patching

In Ruby, a Monkey Patch (MP) is referred to as a dynamic modification to a class.
And by a dynamic modification to a class means to add new or overwrite existing methods at runtime.


or

To change the existing behavior of a class or module at run time, we use monkey patching.


For example-

puts "Hello".reverse            # "olleH"

Now we are modifying the existing brhavior of reverse method of class String

class String
  def reverse
    self.upcase
  end
end


now when we do "Hello".reverse the Output will be "HELLO".


2.

We can also change the behavior of a class by making decorator of that class.

Decorator is the another way to implemet monkey patching.

When we use decorator, we just make the a new decorator file with the same name as class name and inside it we define our method.
as per our requirement.

Ex. if class name is Product, then decoratorname would be ProductDecorator.