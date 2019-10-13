require 'pry'
class Transfer
  
  attr_accessor :sender
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
end
