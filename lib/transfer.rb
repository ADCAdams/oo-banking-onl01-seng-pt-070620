class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    return true if @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if valid?
      if @status == "pending"
        if (@sender.balance - @amount) > 0 
          puts "SUCCESS"
          @sender.balance -= @amount
          @receiver.balance += @amount
          @status = "complete"
          "complete"
        else
          puts "NOT ENOUGH FUNDS"
          @status = "Transaction rejected. Please check your account balance."
        "rejected"
        end
      else 
        puts "#{@sender.name} NOT PENDING"
        @status = "Transaction rejected. Please check your account balance."
        "rejected"
      end
    else 
      puts "#{@sender.name} NOT VALID"
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
