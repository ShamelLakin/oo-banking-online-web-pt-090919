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
    if @status == "open" && @balance > 0
        true 
     else 
        false 
     end
  end 
end
