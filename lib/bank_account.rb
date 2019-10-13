class BankAccount
  
  attr_accessor :account, :name, :balance, :status
  attr_reader :name
  
  def initialize(account)
    @account = account
    @name = "Avi"
    @balance = 1000
    @status = "open"
    
  end
  
  # def name
  #   @name
  # end 

end
