class Bank
	attr_accessor 
	attr_reader :account, :checking, :savings, :no_of_accts, :interest

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
		print "Checking Acct Balance: #{@checking}"
	end
	def disp_sav
		print "Savings Acct Balance: #{@savings}"
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
		# totes = @checking + @savings
		puts "Total Money: #{@checking + @savings}"
	end
	def account_info
		totes = @checking + @savings
		puts "Account Number: #{@account}", "Total Money: #{totes}", "Checking Acct: #{@checking}", "Savings Acct: #{@savings}", "Interest Rate: #{@interest}"
	end
end

RSpec.describe Bank do
	it 'has a method to retrieve checking acct balance' do
		united = Bank.new
		
		expect{united.disp_check}.to output("Checking Acct Balance: 50").to_stdout
	end

	it 'has a method to retrieve total acct balance' do
		united = Bank.new

		expect{united.total}.to output("Total Money: 550\n").to_stdout
	end

	it 'has a method to withdraw cash' do
		united = Bank.new
		united.withdraw("checking", 30)

		expect(united.checking).to eq(20)
	end

	it 'raises error if overdrawn' do
		united = Bank.new

		expect{united.withdraw("checking", 60)}.to output("Failed to withdraw monies.\n").to_stdout
	end
end