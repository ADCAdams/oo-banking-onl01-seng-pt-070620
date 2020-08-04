class Transfer
  attr_accessor :name, :receiver, :amount
  def initialize(name, receiver, amount)
    @name = name
    @receiver = receiver
    @amount = amount
  end
end
