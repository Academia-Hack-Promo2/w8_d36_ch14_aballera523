class CustomersController < ApplicationController
	def index
		if Customer.all
			render json: Customer.all, :except => [:updated_at], :include => [:accounts => {:except =>[:created_at, :updated_at, :customer_id]}]
		else
			render json: {"Mensaje" => "Los Clientes No Existen"}
		end		
	end

	def show
		if Customer.exists?(params[:id])			
			render json: Customer.find(params[:id]), :except => [:updated_at], :include => [:accounts => {:except =>[:created_at, :updated_at, :customer_id]}]		
		else
			render json: {"Mensaje" => "El Cliente No Existe"}
		end	
	end

	def create
		cliente = Customer.new(permit)
		if cliente.valid?
			cliente.save
			render json: cliente, :except => [:updated_at]
		else
			render json: {"Mensaje" => "El Cliente No Se Guardó"}
		end	
	end

	def destroy
		if Customer.exists?(params[:id])
			Customer.delete(params[:id])
			render json: {"Mensaje" => "El Cliente Fue Eliminado"}
		else
			render json: {"Mensaje" => "El Cliente No Existe"}
		end
	end

	def update
		if Customer.exists?(params[:id])
			Customer.update(params[:id], permit)
			render json: {"Mensaje" => "El Cliente Fue Editado"}
		else
			render json: {"Mensaje" => "El Cliente No Existe"}
		end
	end

	private
	def permit
		params.require(:customer).permit(:name, :last_name, :id_number, :address, :phone, :mail)
	end
end
