# STI :- Single table inheritance

In Ruby on Rails, STI is used to implement relationships between classes and database using single database table.

In Simplest term, STI allows multiple classes to share same database table, where each row represents an instance of one of these classes.
This means that data of all the subclasses are stored in a single table, and type column is used to differentiate between different types of objects.

# Example :-

Assume we have a Vehicle class with subclasses Car and Bike. We want to store information about both cars and bikes in a single database table called vehicles.


class Vehicle < ActiveRecord::Base
  # Common methods and attributes for all vehicles
end

class Car < Vehicle
  # Specific methods and attributes for cars
end

class Bike < Vehicle
  # Specific methods and attributes for bikes
end



Vehicle is the parent class, and Car and Bike are its subclasses.

Each subclass (Car and Bike) inherits attributes and methods from the parent class (Vehicle).

In the database table vehicles, there is a column called type, which stores the class name of each object (e.g., "Car" or "Bike").

When an object of type Car or Bike is saved to the database, it is stored in the vehicles table, and the value of the type column indicates its specific type(class).