# Definition :
# A race condition is a concurrency problem that occurs in software when the behavior of a
# program depends on the relative timing or interleaving of multiple threads or processes. It
# happens when two or more operations that should be executed in a specific order to maintain
# correctness are instead executed in an unpredictable order.

# Race conditions typically arise in systems where multiple threads or processes are accessing
# shared resources (like variables, data structures, or file systems) without proper synchronization
# mechanisms.


# Key Characteristics

# Shared resource access
# Concurrent execution
# Timing-dependent behavior
# Potential for unexpected or incorrect results


# Let's look at some examples to better understand race conditions:

# Example 1: Bank Account Balance

# Consider a scenario where two threads are simultaneously trying to withdraw money from a
# bank account:

class BankAccount
  attr_accessor :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def withdraw(amount)
    if @balance >= amount
      # Simulate some processing time
      sleep(0.1)
      @balance -= amount
      puts "Withdrew #{amount}. New balance: #{@balance}"
    else
      puts "Insufficient funds"
    end
  end
end

account = BankAccount.new(100)

thread1 = Thread.new { account.withdraw(75) }
thread2 = Thread.new { account.withdraw(75) }

thread1.join
thread2.join

puts "Final balance: #{account.balance}"


# In this example, we have a bank account with an initial balance of 100. Two threads attempt to
# withdraw 75 each. If executed sequentially, the first withdrawal should succeed, and the second
# should fail due to insufficient funds. However, due to the race condition, both threads might
# check the balance, find it sufficient, and proceed with the withdrawal, resulting in a negative
# balance.