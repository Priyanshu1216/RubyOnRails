# Rake (Ruby + Make)

It is a task runner o build tool, similar to Make in Unix environment.
It is used in Ruby on Rails for automating tasks such as running tests, migrating databases and managing assets.

Rake tasks are defined in files with .rake extension placed in  lib/tasks directory.

Example-

Think of Rake as a helpful assistant that can do tasks for you automatically.

Imagine you have a bunch of chores to do, like cleaning your room, washing dishes, and taking out the trash. 
Instead of doing each one by hand, you can write them down on a list and ask your assistant (Rake) to take care of them for you.

So, in the simplest terms:

You write down what you want Rake to do (tasks) in a special file called a Rakefile.
Each task has a name and a list of things it needs to do.
When you tell Rake to run a task, it reads the list and does the things you asked for automatically.
Thats it, Rake helps you save time by doing repetitive tasks for you, like testing your code or updating your database.


i.e.


1. First, you create a new file called tasks.rake in the lib/tasks directory of your Rails project.


# lib/tasks/tasks.rake

# Define a task called 'clean' to clean up temporary files
task :clean do
  puts "Cleaning up temporary files..."
  # Code to clean up temporary files goes here
end

# Define a task called 'test' to run automated tests
task :test do
  puts "Running automated tests..."
  # Code to run automated tests goes here
end


Now, when you want to clean up temporary files, you simply run:

rake clean
rake test

And this will execute the code inside the test task and print "Running automated tests...".




