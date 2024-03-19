super vs super()

- In Ruby, super and super() are used to call a method with the same name in parent class, but there is a subtle difference between these two.

- super

- super with no parenthesis call the parent method with the same argument that were passed to the current method.
- In other words, the arguments from the current method are passed to parent method automatically.


- super()

- super() with parenthesis calls the parent method with no arguments.
- This means if parent method is expecting any arguments, you must provide them explicitly.