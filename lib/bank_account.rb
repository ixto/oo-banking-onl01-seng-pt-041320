# class BankAccount
# attr_accessor :bank_account, :balance, :status  
# attr_reader :name 
 
# def initialize(name)
#   @name = name 
#   @bank_account = bank_account
#   @balance = 1000 
#   @status = 'open' 
# end 
 
# def deposit
   
# end 
 
# def display_balance
#   self.balance 
# end 
 
# end


class BankAccount
    attr_accessor :balance, :status, :transfer
    attr_reader :name

    def initialize(name, balance = 1000, status = "open")
        @name = name
        @balance = balance
        @status = status
    end

    def deposit(deposit)
        #binding.pry
        @balance = @balance + deposit
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        if @status == "open" && @balance > 0
            true
        else
            false
        end
    end

    def close_account
        @status = "closed"
    end

end
