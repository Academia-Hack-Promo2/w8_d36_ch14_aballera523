class Customer < ActiveRecord::Base
	validates :name, :id_number, presence: true
	validates :name, :last_name, :id_number, :phone, length: {maximum: 15, :too_long => "%{count} caracteres es el máximo permitido"}
	validates :mail, length: {maximum: 30, :too_long => "%{count} caracteres es el máximo permitido"}
	validates :address, length: {maximum: 100, :too_long => "%{count} caracteres es el máximo permitido"}
	has_many :accounts
	has_many :operations
end
