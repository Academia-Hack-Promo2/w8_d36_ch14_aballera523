class OperationsController < ApplicationController
	def index
		if Operation.all
			render json: Operation.all, :except => [:updated_at, :account_id, :account_id2, :customer_id]
		else
			render json: {"Mensaje" => "No Existen Transacciones"}
		end				
	end

	def date
		transactions = Operation.dates(params[:date1],params[:date2])
    if transactions
    	render json: transactions, :except => [:updated_at, :account_id, :account_id2, :customer_id]
    else
    	render json: {"Mensaje" => "No Existen Transacciones En El Periodo"}
    end
    
	end

	def show		
		if Operation.exists?(params[:id])			
			render json: Operation.find(params[:id]), :except => [:updated_at, :account_id, :account_id2, :customer_id]			
		else
			render json: {"Mensaje" => "La Transacción No Existe"}
		end		
	end	

	def deposit
		deposit = Operation.new(params_deposit)
		account = Account.find(params_deposit[:account_id])

		if Operation.deposits(params_deposit[:o_type],
			params_deposit[:a_origin],
			params_deposit[:amount],			
			account)
			deposit.save
			render json: {"Mensaje" => "Depósito Exitoso"} 	
		else
			render json: {"Mensaje" => "El Depósito Se Realizó Exitosamente"}
		end
	end

	def withdrawal
		withdrawal = Operation.new(params_withdrawal)
		account = Account.find(params_withdrawal[:account_id])

		if Operation.withdrawals(params_withdrawal[:o_type],
			params_withdrawal[:a_origin],
			params_withdrawal[:amount],			
			account)
			withdrawal.save
			render json: {"Mensaje" => "Retiro Exitoso"}			
		else
			render json: {"Mensaje" => "El Retiro No Se Realizó"}
		end
	end

	def transfer
		transfer = Operation.new(params_transfer)
		account = Account.find(params_transfer[:account_id])
		account2 = Account.find(params_transfer[:account_id2])

		if Operation.transfers(params_transfer[:o_type],
			params_transfer[:a_origin],
			params_transfer[:a_target],
			params_transfer[:amount],			
			account, account2)
			transfer.save
			render json: {"Mensaje" => "Transferencia Exitosa"}			
		else
			render json: {"Mensaje" => "La Transferencia No Se Realizó"}
		end
	end

	def destroy		
		if Operation.exists?(params[:id])
			Operation.delete(params[:id])
			render json: {"Mensaje" => "La Transacción Fue Eliminada"}
		else
			render json: {"Mensaje" => "La Transacción No Existe"}
		end
	end

	def update
		if Operation.exists?(params[:id])
			Operation.update(params[:id], permit)
			render json: {"Mensaje" => "La Transacción Fue Editada"}
		else
			render json: {"Mensaje" => "La Transacción No Existe"}
		end
	end

	private
	def permit
		params.require(:operation).permit(:o_type, :pay_type, :date, :a_origin, :a_target, :amount, :account_id, :customer_id)
	end

	def params_deposit
		params.require(:operation).permit(:o_type, :pay_type, :date, :a_origin, :amount, :account_id, :customer_id)
	end

	def params_withdrawal
		params.require(:operation).permit(:o_type, :pay_type, :date, :a_origin, :amount, :account_id, :customer_id)
	end

	def params_transfer
		params.require(:operation).permit(:o_type, :pay_type, :date, :a_origin, :a_target, :amount, :account_id, :account_id2, :customer_id)
	end
end
