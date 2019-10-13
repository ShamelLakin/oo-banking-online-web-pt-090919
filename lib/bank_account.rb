require "pry"
class BankAccount
  
  attr_accessor :account, :balance, :status, :deposit
  attr_reader :name
  
  def initialize(account)
    @account = account
    @name = "Avi"
    @balance = 1000
    @status = "open"
    
  end
  
  def name
    @name
  end 
  
  def deposit(money)
    @balance += money
  end
  
  def display_balance
    "Your balance is $#{name.@balance}."
  end

end
