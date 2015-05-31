class Operation < ActiveRecord::Base
	validates :o_type, :date, :amount, presence: true
	validates :o_type,:a_origin, :a_target, :pay_type, length: {maximum: 23, :too_long => "%{count} caracteres es el máximo permitido"}
	validates :amount, numericality: true, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }
	belongs_to :account
	belongs_to :customer

	def self.deposits(o_type, a_target, amount, account)
		if account.number == a_target && o_type == 'Deposito'
			account.balance += amount
			account.save
		end
	end

	def self.withdrawals(o_type, a_origin, amount, account)
		if account.number == a_origin && o_type == 'Retiro' && account.a_type != 'Plazo Fijo' && account.a_type != 'Inversiones' && amount <= account.balance
			account.balance -= amount
			account.save
		end
	end

	def self.transfers(o_type, a_origin, amount, account)
		if account.number == a_origin && o_type == 'Transferencia' && account.a_type != 'Plazo Fijo' && account.a_type != 'Inversiones' && amount <= account.balance
			account.balance -= amount
			account.save
		end
	end

	def self.transfers(o_type, a_origin, a_target, amount, account, account2)
  		if account.number == a_origin && account2.number == a_target && o_type == 'Transferencia' && amount <= account.balance
  			
  			account.balance -= amount
  			account2.balance += amount
  			
  			account.save
  			account2.save  		
  		end
  	end
end
