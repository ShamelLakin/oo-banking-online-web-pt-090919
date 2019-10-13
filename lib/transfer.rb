require 'pry'
class Transfer
  
  attr_accessor :sender, :receiver, :amount
  attr_reader :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid? 
    if @sender.valid? && @receiver.valid?
        true 
     else 
       false
     end
  end 
  
  def execute_transaction
    if @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "reject"
      "Transaction rejected. Please check your account balance."
    end
  end 
end
