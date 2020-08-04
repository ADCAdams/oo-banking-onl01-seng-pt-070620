class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    return true if sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid?
      if @status == "pending"
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      else 
        puts "#{@sender} NOT PENDING"
        @status = "Transaction rejected. Please check your account balance."
      end
    else 
      puts "#{@sender} NOT VALID"
      @status = "Transaction rejected. Please check your account balance."
    end
  end
end
