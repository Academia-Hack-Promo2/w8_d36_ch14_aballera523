class AccountsController < ApplicationController
	def index
		if Account.all
			render json: Account.all, :except => [:created_at, :updated_at]
		else
			render json: {"Mensaje" => "Las Cuentas No Existen"}
		end		
	end

	def show		
		if Account.exists?(params[:id])			
			render json: Account.find(params[:id]), :except => [:created_at, :updated_at]			
		else
			render json: {"Mensaje" => "La Cuenta No Existe"}
		end		
	end

	def create
		cuenta = Account.new(permit)
		if cuenta.valid?
			cuenta.save
			render json: cuenta, :except => [:created_at, :updated_at]
		else
			render json: {"Mensaje" => "La Cuenta No Se Realizó"}
		end	
	end

	def destroy
		if Account.exists?(params[:id])
			Account.delete(params[:id])
			render json: {"Mensaje" => "La Cuenta Fue Eliminada"}
		else
			render json: {"Mensaje" => "La Cuenta No Existe"}
		end
	end
	
	def update
		if Account.exists?(params[:id])
			Account.update(params[:id], permit)
			render json: {"Mensaje" => "La Cuenta Fue Editada"}
		else
			render json: {"Mensaje" => "La Cuenta No Existe"}
		end
	end

	private
	def permit
		params.require(:account).permit(:a_type, :number, :balance, :customer_id)
	end
end
