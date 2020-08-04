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
      return true 
    else
      return false 
    end
  end
end
