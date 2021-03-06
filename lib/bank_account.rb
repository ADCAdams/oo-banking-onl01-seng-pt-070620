class BankAccount
  attr_accessor :status, :balance
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(number)
    @balance += number
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    if @balance > 0 && @status == "open"
      puts "VALID - Account #{@name} has a balance of #{balance} with a status of #{status}"
      return true 
    else
      puts "NOT VALID - Account #{@name} has a balance of #{balance} with a status of #{status}"
      return false 
    end
  end
  
  def close_account
    @balance = 0 
    @status = "closed"
  end
end
