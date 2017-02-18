class Bank
	attr_accessor :account, :checking, :savings
	attr_reader :no_of_accts

	def initialize
		@account = ""
		8.times {@account << (rand(10)).to_s}
		@checking = 50
		@savings = 500
		@no_of_accts = 2
		@interest = ".07 Percent"
	end
	def account_no
		puts "Account Number: #{@account}"
		self
	end
	def disp_check
		puts "Checking Acct Balance: #{@checking}"
		self
	end
	def disp_sav
		puts "Savings Acct Balance: #{@savings}"
		self
	end
	def deposit(acct, val)
		if acct == "checking"
			@checking += val
		elsif acct == "savings"
			@savings += val
		else
			puts "Failed to deposit monies."
		end
		self
	end
	def withdraw(acct, val)
		if acct == "checking" && @checking - val > 0
			@checking -= val
		elsif acct == "savings"
			@savings -= val
		else
			puts "Failed to withdraw monies."
		end
		self
	end
	def total
		totes = @checking + @savings
		puts "Total Money: #{totes}"
		self
	end
	def account_info
		totes = @checking + @savings
		puts "Account Number: #{@account}", "Total Money: #{totes}", "Checking Acct: #{@checking}", "Savings Acct: #{@savings}", "Interest Rate: #{@interest}"
		self
	end
end

United = Bank.new
United.deposit("checking", 200).account_info